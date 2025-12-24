.class public final Lb/l/a/a;
.super Lb/l/a/r;
.source ""

# interfaces
.implements Lb/l/a/k$h;


# instance fields
.field public final r:Lb/l/a/k;

.field public s:Z

.field public t:I


# direct methods
.method public constructor <init>(Lb/l/a/k;)V
    .locals 1

    invoke-direct {p0}, Lb/l/a/r;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/l/a/a;->t:I

    iput-object p1, p0, Lb/l/a/a;->r:Lb/l/a/k;

    return-void
.end method

.method public static o(Lb/l/a/r$a;)Z
    .locals 2

    iget-object p0, p0, Lb/l/a/r$a;->b:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v1, :cond_1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Landroidx/fragment/app/Fragment$b;->q:Z

    :goto_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/l/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    sget-boolean v0, Lb/l/a/k;->H:Z

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lb/l/a/r;->h:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/l/a/a;->r:Lb/l/a/k;

    .line 1
    iget-object p2, p1, Lb/l/a/k;->i:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lb/l/a/k;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p1, Lb/l/a/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/l/a/a;->i(Z)I

    move-result v0

    return v0
.end method

.method public f(Landroidx/fragment/app/Fragment;)Lb/l/a/r;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Lb/l/a/k;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/l/a/a;->r:Lb/l/a/k;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Lb/l/a/r$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lb/l/a/r$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lb/l/a/r;->c(Lb/l/a/r$a;)V

    return-object p0
.end method

.method public g(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lb/l/a/r;->g(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iget-object p1, p0, Lb/l/a/a;->r:Lb/l/a/k;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->s:Lb/l/a/k;

    return-void
.end method

.method public h(I)V
    .locals 4

    iget-boolean v0, p0, Lb/l/a/r;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lb/l/a/k;->H:Z

    iget-object v0, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/l/a/r$a;

    iget-object v2, v2, Lb/l/a/r$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    iget v3, v2, Landroidx/fragment/app/Fragment;->r:I

    add-int/2addr v3, p1

    iput v3, v2, Landroidx/fragment/app/Fragment;->r:I

    sget-boolean v2, Lb/l/a/k;->H:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i(Z)I
    .locals 4

    iget-boolean v0, p0, Lb/l/a/a;->s:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lb/l/a/k;->H:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/l/a/a;->s:Z

    iget-boolean v0, p0, Lb/l/a/r;->h:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/l/a/a;->r:Lb/l/a/k;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lb/l/a/k;->n:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lb/l/a/k;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lb/l/a/k;->n:Ljava/util/ArrayList;

    iget-object v3, v0, Lb/l/a/k;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lb/l/a/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Lb/l/a/k;->m:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lb/l/a/k;->m:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, v0, Lb/l/a/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lb/l/a/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2
    :cond_3
    :goto_2
    iput v1, p0, Lb/l/a/a;->t:I

    iget-object v0, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v0, p0, p1}, Lb/l/a/k;->N(Lb/l/a/k$h;Z)V

    iget p1, p0, Lb/l/a/a;->t:I

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/l/a/r;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/a;->t:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/l/a/a;->s:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lb/l/a/r;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/r;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/r;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lb/l/a/r;->b:I

    if-nez v0, :cond_1

    iget v0, p0, Lb/l/a/r;->c:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/r;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/r;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lb/l/a/r;->d:I

    if-nez v0, :cond_3

    iget v0, p0, Lb/l/a/r;->e:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/r;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/r;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lb/l/a/r;->j:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lb/l/a/r;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/r;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/l/a/r;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Lb/l/a/r;->l:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lb/l/a/r;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/l/a/r;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/l/a/r;->m:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    iget-object v2, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/l/a/r$a;

    iget v3, v2, Lb/l/a/r$a;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "cmd="

    invoke-static {v3}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lb/l/a/r$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v3, "NULL"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lb/l/a/r$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v3, v2, Lb/l/a/r$a;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Lb/l/a/r$a;->d:I

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lb/l/a/r$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lb/l/a/r$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v3, v2, Lb/l/a/r$a;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Lb/l/a/r$a;->f:I

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lb/l/a/r$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Lb/l/a/r$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()V
    .locals 9

    iget-object v0, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_6

    iget-object v4, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/l/a/r$a;

    iget-object v5, v4, Lb/l/a/r$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    iget v6, p0, Lb/l/a/r;->f:I

    iget v7, p0, Lb/l/a/r;->g:I

    .line 1
    iget-object v8, v5, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$b;

    if-nez v8, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$b;

    iget-object v8, v5, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$b;

    iput v6, v8, Landroidx/fragment/app/Fragment$b;->e:I

    iput v7, v8, Landroidx/fragment/app/Fragment$b;->f:I

    .line 2
    :cond_1
    :goto_1
    iget v6, v4, Lb/l/a/r$a;->a:I

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    invoke-static {v1}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lb/l/a/r$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    iget-object v7, v4, Lb/l/a/r$a;->h:Lb/n/d$b;

    invoke-virtual {v6, v5, v7}, Lb/l/a/k;->o0(Landroidx/fragment/app/Fragment;Lb/n/d$b;)V

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v6, v7}, Lb/l/a/k;->p0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_3
    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v6, v5}, Lb/l/a/k;->p0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_4
    iget v6, v4, Lb/l/a/r$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v6, v5}, Lb/l/a/k;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_5
    iget v6, v4, Lb/l/a/r$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v6, v5}, Lb/l/a/k;->l(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_6
    iget v6, v4, Lb/l/a/r$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    if-eqz v6, :cond_2

    .line 3
    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v6, :cond_4

    iput-boolean v1, v5, Landroidx/fragment/app/Fragment;->z:Z

    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->M:Z

    xor-int/2addr v6, v3

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_2

    :cond_2
    throw v7

    .line 4
    :pswitch_7
    iget v6, v4, Lb/l/a/r$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    if-eqz v6, :cond_3

    .line 5
    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v6, :cond_4

    iput-boolean v3, v5, Landroidx/fragment/app/Fragment;->z:Z

    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->M:Z

    xor-int/2addr v6, v3

    iput-boolean v6, v5, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_2

    :cond_3
    throw v7

    .line 6
    :pswitch_8
    iget v6, v4, Lb/l/a/r$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v6, v5}, Lb/l/a/k;->g0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_9
    iget v6, v4, Lb/l/a/r$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v6, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v6, v5, v1}, Lb/l/a/k;->f(Landroidx/fragment/app/Fragment;Z)V

    :cond_4
    :goto_2
    iget-boolean v6, p0, Lb/l/a/r;->p:Z

    if-nez v6, :cond_5

    iget v4, v4, Lb/l/a/r$a;->a:I

    if-eq v4, v3, :cond_5

    if-eqz v5, :cond_5

    iget-object v3, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v3, v5}, Lb/l/a/k;->b0(Landroidx/fragment/app/Fragment;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lb/l/a/r;->p:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lb/l/a/a;->r:Lb/l/a/k;

    iget v1, v0, Lb/l/a/k;->p:I

    invoke-virtual {v0, v1, v3}, Lb/l/a/k;->c0(IZ)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public l(Z)V
    .locals 7

    iget-object v0, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v2, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/l/a/r$a;

    iget-object v3, v2, Lb/l/a/r$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    iget v4, p0, Lb/l/a/r;->f:I

    invoke-static {v4}, Lb/l/a/k;->k0(I)I

    move-result v4

    iget v5, p0, Lb/l/a/r;->g:I

    .line 1
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$b;

    if-nez v6, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$b;

    iget-object v6, v3, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$b;

    iput v4, v6, Landroidx/fragment/app/Fragment$b;->e:I

    iput v5, v6, Landroidx/fragment/app/Fragment$b;->f:I

    .line 2
    :cond_1
    :goto_1
    iget v4, v2, Lb/l/a/r$a;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cmd: "

    invoke-static {v0}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lb/l/a/r$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    iget-object v5, v2, Lb/l/a/r$a;->g:Lb/n/d$b;

    invoke-virtual {v4, v3, v5}, Lb/l/a/k;->o0(Landroidx/fragment/app/Fragment;Lb/n/d$b;)V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v4, v3}, Lb/l/a/k;->p0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_3
    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v4, v6}, Lb/l/a/k;->p0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_4
    iget v4, v2, Lb/l/a/r$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v4, v3}, Lb/l/a/k;->l(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_5
    iget v4, v2, Lb/l/a/r$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v4, v3}, Lb/l/a/k;->h(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :pswitch_6
    iget v4, v2, Lb/l/a/r$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    if-eqz v4, :cond_2

    .line 3
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v4, :cond_4

    iput-boolean v1, v3, Landroidx/fragment/app/Fragment;->z:Z

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->M:Z

    xor-int/2addr v4, v1

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_2

    :cond_2
    throw v6

    .line 4
    :pswitch_7
    iget v4, v2, Lb/l/a/r$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    if-eqz v4, :cond_3

    .line 5
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v4, :cond_4

    iput-boolean v5, v3, Landroidx/fragment/app/Fragment;->z:Z

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->M:Z

    xor-int/2addr v4, v1

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->M:Z

    goto :goto_2

    :cond_3
    throw v6

    .line 6
    :pswitch_8
    iget v4, v2, Lb/l/a/r$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v4, v3, v5}, Lb/l/a/k;->f(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_2

    :pswitch_9
    iget v4, v2, Lb/l/a/r$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V(I)V

    iget-object v4, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v4, v3}, Lb/l/a/k;->g0(Landroidx/fragment/app/Fragment;)V

    :cond_4
    :goto_2
    iget-boolean v4, p0, Lb/l/a/r;->p:Z

    if-nez v4, :cond_5

    iget v2, v2, Lb/l/a/r$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v2, p0, Lb/l/a/a;->r:Lb/l/a/k;

    invoke-virtual {v2, v3}, Lb/l/a/k;->b0(Landroidx/fragment/app/Fragment;)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lb/l/a/r;->p:Z

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, p0, Lb/l/a/a;->r:Lb/l/a/k;

    iget v0, p1, Lb/l/a/k;->p:I

    invoke-virtual {p1, v0, v1}, Lb/l/a/k;->c0(IZ)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public m(I)Z
    .locals 4

    iget-object v0, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/l/a/r$a;

    iget-object v3, v3, Lb/l/a/r$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget v3, v3, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public n(Ljava/util/ArrayList;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/l/a/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    iget-object v4, p0, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/l/a/r$a;

    iget-object v4, v4, Lb/l/a/r$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    iget v4, v4, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/l/a/a;

    iget-object v6, v5, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    iget-object v8, v5, Lb/l/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/l/a/r$a;

    iget-object v8, v8, Lb/l/a/r$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_2

    iget v8, v8, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/l/a/a;->t:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/l/a/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lb/l/a/r;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/l/a/r;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
