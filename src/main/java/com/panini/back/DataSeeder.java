package com.panini.back;

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Statement;
import java.nio.file.Files;
import java.nio.file.Paths;

@Component
public class DataSeeder implements CommandLineRunner {
    
    private final DataSource dataSource;
    
    public DataSeeder(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    @Override
    public void run(String... args) throws Exception {
        try (Connection connection = dataSource.getConnection();
             Statement statement = connection.createStatement()) {
            
            // Nettoyer les données existantes (respecter les foreign keys)
            try {
                statement.execute("TRUNCATE TABLE user_collection_items CASCADE");
                statement.execute("TRUNCATE TABLE collection_items CASCADE");
                statement.execute("TRUNCATE TABLE stickers CASCADE");
                statement.execute("TRUNCATE TABLE teams CASCADE");
                statement.execute("TRUNCATE TABLE categories CASCADE");
                System.out.println("✨ Tables nettoyées");
            } catch (Exception e) {
                System.out.println("Note: Impossible de nettoyer (tables vides?) - " + e.getMessage());
            }
            
            // Lire data.sql du classpath
            String sql = new String(Files.readAllBytes(
                Paths.get(this.getClass().getClassLoader().getResource("data.sql").toURI())
            ));
            
            // Exécuter tous les statements
            int count = 0;
            for (String sqlStatement : sql.split(";")) {
                String trimmed = sqlStatement.trim();
                if (!trimmed.isEmpty() && !trimmed.startsWith("--")) {
                    try {
                        statement.execute(trimmed);
                        count++;
                    } catch (Exception e) {
                        System.err.println("❌ Erreur SQL: " + e.getMessage());
                    }
                }
            }
            
            System.out.println("✅ Base de données peuplée! (" + count + " statements exécutés)");
        }
    }
}
