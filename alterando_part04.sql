ALTER TABLE Medico 
ADD COLUMN em_atividade BOOLEAN DEFAULT TRUE;

UPDATE Medico SET em_atividade = FALSE WHERE id IN (3, 7);

UPDATE Medico SET em_atividade = TRUE WHERE id NOT IN (3, 7);