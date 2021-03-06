USE Proiect_Policlinica
GO

--chei starine in tabela MEDICI
ALTER TABLE MEDICI
	ADD CONSTRAINT FK_MEDICI_FUNCTII FOREIGN KEY (idFunctie)
	REFERENCES FUNCTII(idFunctie);

ALTER TABLE MEDICI
	ADD CONSTRAINT FK_MEDICI_SECTII FOREIGN KEY (idSectie)
	REFERENCES SECTII(idSectie);


--cheie straina in Tabela CONDUCATOR
ALTER TABLE CONDUCATOR
	ADD CONSTRAINT FK_CONDUCATOR_SECTIE FOREIGN KEY (idSectie)
	REFERENCES SECTII(idSectie);

--cheie straina in tabela ASISTENTI
ALTER TABLE ASISTENTI
	ADD CONSTRAINT FK_ASISTENTI_SECTII FOREIGN KEY (idSectie)
	REFERENCES SECTII(idSectie);

--cheie straina pentru Pacient
ALTER TABLE PACIENT
	ADD CONSTRAINT FK_PACIENT_MEDIC FOREIGN KEY (idMedic)
	REFERENCES MEDICI(idMedic);

--chei straine in tabela DIAGNOSTIC
ALTER TABLE DIAGNOSTIC
	ADD CONSTRAINT FK_DIAGNOSTIC_PACIENT FOREIGN KEY (idPacient)
	REFERENCES PACIENT(idPacient);

ALTER TABLE DIAGNOSTIC
	ADD CONSTRAINT FK_DIAGNOSTIC_MEDIC FOREIGN KEY (idMedic)
	REFERENCES MEDICI(idMedic);