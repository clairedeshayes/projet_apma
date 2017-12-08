

package body moteur_jeu  is

   function Choix_Coup(E : Etat) return Coup  is
      Coups : Liste_Coups.Liste;
      Gain_max,Gain_Courant, Indice_Max :=0 : Integer;
      Meilleur_Coup : Coup;
   begin
      Coups := Coups_Possibles(E,JoueurMoteur);
<<<<<<< HEAD
      for(i=Coups'First;i<Coups'Length;i++) loop
         Gain_Courant := Eval_Min_Max(E,2,Coups[i],JoueurMoteur);
         if Gain_Courant > Gain_max then
            Indice_Max := i;
         end if;
      end loop;
      return Coups[Indice_Max];
=======
      --for(i=0;i<Coups'Length;i++) loop


      --end loop;


>>>>>>> f9f6ad6bff8e563b5b65467b71720836bf6b7fbc
   end Choix_Coup;

   --parametres : etat, profondeur max de recherche
   --retourn gain attendu pour cet etat
   function Eval_Min_Max(E : Etat; P : Natural; C : Coup; J : Joueur) return Integer is
   begin
      --on a atteint un feuille : evaluation statique
      if (P = 0) then
         return Eval(E);

      --on a atteint un etat terminal
      elsif Est_Gagnant(E,J) then
         return largeur*hauteur;
      elsif EstGagnant(E,Adversaire(J)) then
         return -largeur*hauteur;
      elsif Est_Nul(E) then
         return 0;

      else
         --si c'est a l'adversaire de jouer
         if ((P/2)=1) then
            return Min(Coups_Possibles(E,Adversaire(J)));
         else
            return Max(Coups_Possibles(E,J));
         end if;
      end if;

   end Eval_Min_Max;



end moteur_jeu;
