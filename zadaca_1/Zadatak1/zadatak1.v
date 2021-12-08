Goal forall X Y, ~(X /\ Y) \/ (~X /\ Y) \/ (~X /\ ~Y) <-> ~(X /\ Y).
Proof.
  split.
  - intros. destruct H.
    -- apply H.
    -- destruct H.
       --- unfold not. intros. destruct H0. apply H. apply H0.
       --- destruct H. unfold not. intros. destruct H1. apply H. 
           apply H1.
  - intros. left. apply H.
Qed.

Lemma De_Morgan_1 : forall X Y, ~(X \/ Y) <-> ~X /\ ~Y.
Proof.
  intros. split.
  -  intros. unfold not. split. 
    -- intros. apply H. left. exact H0.
    -- intros. apply H. right. exact H0.
  - intros. destruct H. intros n. destruct n.
    -- apply H. exact H1.
    -- apply H0. exact H1.
Qed.

Goal forall X Y Z, ~(~X /\ Y /\ ~Z) /\ ~(X /\ Y /\ Z) /\ 
                   (X /\ ~Y /\ ~Z) <-> (X /\ ~(Y \/ Z)).
Proof.
  intros. split.
  - intros. destruct H, H0. destruct H1. split.
    -- exact H1.
    -- apply De_Morgan_1. exact H2.
  - intros. destruct H. split.
    -- intros H2. apply H0. destruct H0. destruct H2. destruct H1. left. exact H1.
    -- split. 
      --- intros H2. destruct H0. destruct H2, H1. left. exact H1.
      --- split.
        ---- exact H.
        ---- apply De_Morgan_1. apply H0.    
Qed.