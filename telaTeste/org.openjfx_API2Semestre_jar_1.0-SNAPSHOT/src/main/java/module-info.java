module org.openjfx.API2Semestre {
    requires transitive javafx.controls;
    requires transitive javafx.fxml;
    requires transitive java.sql;

    opens org.openjfx.Atividade to javafx.fxml;
    exports org.openjfx.Atividade;
}
