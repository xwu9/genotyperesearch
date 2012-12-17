#domain gene(Gene1),gene(Gene2),gene(Gene3),gene(Gene4),gene(Gene5),gene(Gene6),gene(Unknown2),gene(Unknown1),depth(Lv;Lv1),name(N1;N2).
#hide.
#show not_possible(Lv,Baby,Gene3,Gene5),total_possible(Lv,Baby,Gene1,Gene2).%,zhengtui(Lv,Baby,Gene3,Gene5),nitui(Lv1,N1,Gene3,Unknown1).
%person(Lv,N,G,G1).%poss(Lv,Baby,Gene1,Gene2),married(N1,N2,Baby).%,poss2(Lv,Baby,Gene1,Gene2),poss3(Lv,Baby,Gene1,Gene2),poss4(Lv,Baby,Gene1,Gene2).

%1{zhengtui(Lv,Baby,Gene3,Gene5),zhengtui(Lv,Baby,Gene3,Gene6),zhengtui(Lv,Baby,Gene4,Gene5),zhengtui(Lv,Baby,Gene4,Gene6)}1 :- person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.



nitui(Lv1,N1,Gene3,Unknown1) :- person(Lv,Baby,Gene3,Gene5),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene3,Gene5).
nitui(Lv1,N1,Gene3,Unknown1) :- person(Lv,Baby,Gene3,Gene6),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene3,Gene6).
nitui(Lv1,N1,Gene4,Unknown1) :- person(Lv,Baby,Gene4,Gene5),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene4,Gene5).
nitui(Lv1,N1,Gene4,Unknown1) :- person(Lv,Baby,Gene4,Gene6),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene4,Gene6).

nitui(Lv1,N1,Unknown1,Gene3) :- person(Lv,Baby,Gene3,Gene5),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.%, not not_possible(Lv,Baby,Gene3,Gene5).
nitui(Lv1,N1,Unknown1,Gene3) :- person(Lv,Baby,Gene3,Gene6),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene3,Gene6).
nitui(Lv1,N1,Unknown1,Gene4) :- person(Lv,Baby,Gene4,Gene5),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.%, not not_possible(Lv,Baby,Gene4,Gene5).
nitui(Lv1,N1,Unknown1,Gene4) :- person(Lv,Baby,Gene4,Gene6),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2.%, not not_possible(Lv,Baby,Gene4,Gene6).


nitui(Lv1,N1,Unknown1,Gene5) :- person(Lv,Baby,Gene3,Gene5),person(Lv1,N2,Gene3,Gene4),married(N2,N1,Baby), Lv=Lv1+1,N1!=N2.%, not not_possible(Lv,Baby,Gene3,Gene5).
nitui(Lv1,N1,Unknown1,Gene6) :- person(Lv,Baby,Gene3,Gene6),person(Lv1,N2,Gene3,Gene4),married(N2,N1,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene3,Gene6).
nitui(Lv1,N1,Unknown1,Gene5) :- person(Lv,Baby,Gene4,Gene5),person(Lv1,N2,Gene3,Gene4),married(N2,N1,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene4,Gene5).
nitui(Lv1,N1,Unknown1,Gene6) :- person(Lv,Baby,Gene4,Gene6),person(Lv1,N2,Gene3,Gene4),married(N2,N1,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene4,Gene6).


nitui(Lv1,N1,Gene5,Unknown1) :- person(Lv,Baby,Gene3,Gene5),person(Lv1,N2,Gene3,Gene4),married(N2,N1,Baby), Lv=Lv1+1,N1!=N2.%,not not_possible(Lv,Baby,Gene3,Gene5).
nitui(Lv1,N1,Gene6,Unknown1) :- person(Lv,Baby,Gene3,Gene6),person(Lv1,N2,Gene3,Gene4),married(N2,N1,Baby), Lv=Lv1+1,N1!=N2.%, not not_possible(Lv,Baby,Gene3,Gene6).
nitui(Lv1,N1,Gene5,Unknown1) :- person(Lv,Baby,Gene4,Gene5),person(Lv1,N2,Gene3,Gene4),married(N2,N1,Baby), Lv=Lv1+1,N1!=N2.%, not not_possible(Lv,Baby,Gene4,Gene5).
nitui(Lv1,N1,Gene6,Unknown1) :- person(Lv,Baby,Gene4,Gene6),person(Lv1,N2,Gene3,Gene4),married(N2,N1,Baby), Lv=Lv1+1,N1!=N2.%, not not_possible(Lv,Baby,Gene4,Gene6).



zhengtui(Lv,Baby,Gene3,Gene5) :- person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2, not not_possible(Lv1,N1,Gene3,Gene4), not not_possible(Lv1,N2,Gene5,Gene6).
zhengtui(Lv,Baby,Gene3,Gene6) :- person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2,not not_possible(Lv1,N1,Gene3,Gene4), not not_possible(Lv1,N2,Gene5,Gene6).
zhengtui(Lv,Baby,Gene4,Gene5) :- person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2,not not_possible(Lv1,N1,Gene3,Gene4), not not_possible(Lv1,N2,Gene5,Gene6).
zhengtui(Lv,Baby,Gene4,Gene6) :- person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),married(N1,N2,Baby), Lv=Lv1+1,N1!=N2,not not_possible(Lv1,N1,Gene3,Gene4), not not_possible(Lv1,N2,Gene5,Gene6).

total_possible(Lv,N1,Gene3,Gene5):-nitui(Lv,N1,Gene3,Gene5),zhengtui(Lv,N1,Gene3,Gene5),person(Lv,N1,Gene3,Gene5).
not_possible(Lv,Baby,Gene3,Gene2):-person(Lv,Baby,Gene3,Gene2),person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),Gene2!=Gene5,Gene2!=Gene6,married(N1,N2,Baby),Lv=Lv1+1,not zhengtui(Lv,Baby,Gene3,Gene2),not nitui(Lv,Baby,Gene3,Gene2).
not_possible(Lv,Baby,Gene4,Gene2):-person(Lv,Baby,Gene4,Gene2),person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),Gene2!=Gene5,Gene2!=Gene6,married(N1,N2,Baby),Lv=Lv1+1,not zhengtui(Lv,Baby,Gene4,Gene2),not nitui(Lv,Baby,Gene4,Gene2).
not_possible(Lv,Baby,Gene1,Gene5):-person(Lv,Baby,Gene1,Gene5),person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),Gene1!=Gene3,Gene1!=Gene4,married(N1,N2,Baby),Lv=Lv1+1,not zhengtui(Lv,Baby,Gene1,Gene5),not nitui(Lv,Baby,Gene1,Gene5).
not_possible(Lv,Baby,Gene1,Gene6):-person(Lv,Baby,Gene1,Gene6),person(Lv1,N1,Gene3,Gene4),person(Lv1,N2,Gene5,Gene6),Gene1!=Gene3,Gene1!=Gene4,married(N1,N2,Baby),Lv=Lv1+1,not zhengtui(Lv,Baby,Gene1,Gene6),not nitui(Lv,Baby,Gene1,Gene6).



