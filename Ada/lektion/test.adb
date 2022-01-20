--Lab 1: Enkel in- och utmatning
--Joseph Strandnes Vige Ekelund
-- 06-09-2019

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;


procedure main is

    Integer_Holder: Integer:= 0;
    Forsta_Pris: Float;
    Sista_Pris: Float;
    Steg: Float;
    Moms: Float;

    --n: float:= 0.0;


begin
   
   
   
   Put(arccos(5.0/10.0));
   
            --v

            loop
            Put("Första pris: ");
            Get(Forsta_Pris);
                if(Forsta_Pris > 0.0) then
                    exit;
                end if ;
                Put("Fel input, försök igen: ");
                New_Line(2);
            end loop;

            loop
            Put("Sista pris: ");
            Get(Sista_Pris);
                if(Sista_Pris > Forsta_Pris) then
                    exit;
                end if ;
                Put("Fel input, försök igen: ");
                New_Line(2);
            end loop;

            loop
            Put("Steg: ");
            Get(Steg);
                if(Steg > 0.0) then
                    exit;
                end if ;
                Put("Fel input, försök igen: ");
                New_Line(2);
            end loop;

            loop
                Put("Momsprocent: ");
                Get(Moms);
                if(Moms > 0.0) then
                    exit;
                end if ;
                Put("Fel input, försök igen: ");
                New_Line(2);
            end loop;





            New_Line(2);
            Put_Line("===Momstabell===");
            Put_Line("Pris utan moms Moms Pris med moms");


            While Forsta_Pris <= Sista_Pris loop

                    Put(Forsta_Pris, fore => 6, aft => 2, exp => 0);
                    Put((Forsta_Pris*Moms/100.0),  fore => 7, aft => 2, exp => 0);
                    Put(Forsta_Pris*(Moms/100.0)+Forsta_Pris,  fore => 9, aft => 2, exp => 0);
                    New_Line(1);

                    Forsta_Pris := Forsta_Pris + Steg;

            end loop;

            --Put(ASCII.ESC & "[2J"); --Clear Console



end main;
