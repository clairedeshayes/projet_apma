

package body moteur_jeu  is

   function Choix_Coup(E : Etat) return Coup  is
   begin

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
         if 
         
   end Eval_Min_Max;
   
   
   
end moteur_jeu;