 program pendu_fin_session;

USES crt;

VAR
    mot, base : STRING;
    car : CHAR;
    ent,i,j,intru,restant,compteur : INTEGER;


FUNCTION Affichage(compteur:INTEGER) : STRING; 
    BEGIN
    IF(compteur=1)THEN
        BEGIN
            WRITELN('      ');
            WRITELN('      ');
            WRITELN('      ');
            WRITELN('      ');
            WRITELN('___   ');
        END
            else if(compteur=2)THEN
                BEGIN
                    WRITELN('      ');
                    WRITELN('|     ');
                    WRITELN('|     ');
                    WRITELN('|     ');
                    WRITELN('___   ');
                END
                    else if(compteur = 3)THEN
                        BEGIN
                            WRITELN('______');
                            WRITELN('|     ');
                            WRITELN('|     ');
                            WRITELN('|     ');
                            WRITELN('___   ');
                        END
                            else if(compteur = 4)THEN
                                BEGIN
                                    WRITELN('______');
                                    WRITELN('|   | ');
                                    WRITELN('|     ');
                                    WRITELN('|     ');
                                    WRITELN('___   ');
                                END
                                    else if(compteur = 5)THEN
                                        BEGIN
                                            WRITELN('______');
                                            WRITELN('|   | ');
                                            WRITELN('|   0 ');
                                            WRITELN('|     ');
                                            WRITELN('___   ');
                                        END
                                            else if(compteur = 6)THEN
                                                BEGIN
                                                    WRITELN('______');
                                                    WRITELN('|   | ');
                                                    WRITELN('|   0 ');
                                                    WRITELN('|   | ');
                                                    WRITELN('___   ');
                                                END
                                                   else if(compteur = 7)THEN
                                                            BEGIN
                                                                WRITELN('______');
                                                                WRITELN('|   | ');
                                                                WRITELN('|   0 ');
                                                                WRITELN('|  /| ');
                                                                WRITELN('___   ');
                                                            END
                                                             else IF (compteur = 8)THEN
                                                                    BEGIN
                                                                        WRITELN('______');
                                                                        WRITELN('|   | ');
                                                                        WRITELN('|   0 ');
                                                                        WRITELN('|  /|\');
                                                                        WRITELN('___   ');
                                                                    END
                                                                    else IF(compteur = 9)THEN
                                                                            BEGIN
                                                                                WRITELN('______');
                                                                                WRITELN('|   | ');
                                                                                WRITELN('|   0 ');
                                                                                WRITELN('|  /|\');
                                                                                WRITELN('___/  ');
                                                                                END
                                                                                else IF(compteur = 10)then
                                                                                            BEGIN
                                                                                                WRITELN('______');
                                                                                                WRITELN('|   | ');
                                                                                                WRITELN('|   0 ');
                                                                                                WRITELN('|  /|\');
                                                                                                WRITELN('___/ \');
                                                                                            END;
    END;
FUNCTION Question(car:CHAR):STRING;
BEGIN
    REPEAT
    BEGIN
        WRITELN('Choisissez un lettre');
        READLN(car);
        clrscr;
        intru := 0;
        FOR j := 1 TO ent DO
        BEGIN
            IF (car = mot[j])THEN
                BEGIN
                  IF (base[j] = '-')THEN
                    BEGIN
                        base[j] := car;
                        intru := intru + 1;
                    END;
                END;
            WRITE(base[j]);
        END;
        WRITELN();
        IF (intru = 0)THEN
            BEGIN
                compteur := compteur + 1;
        END;
    WRITELN(Affichage(compteur));
    END;
    UNTIL (mot = base) OR (compteur = 10);
    if(compteur = 10)then
    BEGIN
        clrscr;
        writeln('VOUS AVEZ PERDU');
        READLN();
    END;
END;
BEGIN
    clrscr;
    compteur:=0;
    WRITELN('Saisissez un mot');
    READLN(mot);
    clrscr;
    ent:=LENGTH(mot);
    restant:=ent;
    base := mot;
        FOR i := 1 TO ent DO
        BEGIN
            base[i] := '-';
        END;
        WRITELN(base);
        WRITELN(Question(car));
        if(compteur < 10)then
        BEGIN
            clrscr;
            WRITELN('VOUS AVEZ GAGNE');
            READLN;
        END;
END.