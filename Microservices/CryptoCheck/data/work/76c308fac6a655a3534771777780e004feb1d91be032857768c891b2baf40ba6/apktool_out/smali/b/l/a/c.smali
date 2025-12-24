.class public Lb/l/a/c;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public W:Landroid/os/Handler;

.field public X:Ljava/lang/Runnable;

.field public Y:I

.field public Z:I

.field public a0:Z

.field public b0:Z

.field public c0:I

.field public d0:Landroid/app/Dialog;

.field public e0:Z

.field public f0:Z

.field public g0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lb/l/a/c$a;

    invoke-direct {v0, p0}, Lb/l/a/c$a;-><init>(Lb/l/a/c;)V

    iput-object v0, p0, Lb/l/a/c;->X:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lb/l/a/c;->Y:I

    iput v0, p0, Lb/l/a/c;->Z:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/l/a/c;->a0:Z

    iput-boolean v0, p0, Lb/l/a/c;->b0:Z

    const/4 v0, -0x1

    iput v0, p0, Lb/l/a/c;->c0:I

    return-void
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->A(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lb/l/a/c;->W:Landroid/os/Handler;

    iget v0, p0, Landroidx/fragment/app/Fragment;->x:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lb/l/a/c;->b0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb/l/a/c;->Y:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb/l/a/c;->Z:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lb/l/a/c;->a0:Z

    iget-boolean v0, p0, Lb/l/a/c;->b0:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lb/l/a/c;->b0:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lb/l/a/c;->c0:I

    :cond_1
    return-void
.end method

.method public C()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2
    iget-object v1, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lb/l/a/c;->e0:Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v1, p0, Lb/l/a/c;->f0:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Lb/l/a/c;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v0, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public D()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2
    iget-boolean v1, p0, Lb/l/a/c;->g0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lb/l/a/c;->f0:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lb/l/a/c;->f0:Z

    :cond_0
    return-void
.end method

.method public E(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4

    iget-boolean v0, p0, Lb/l/a/c;->b0:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->E(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lb/l/a/c;->a0(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    const-string v0, "layout_inflater"

    if-eqz p1, :cond_3

    iget v1, p0, Lb/l/a/c;->Y:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2
    :goto_0
    iget-object p1, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Lb/l/a/i;

    .line 3
    iget-object p1, p1, Lb/l/a/i;->c:Landroid/content/Context;

    goto :goto_1
.end method

.method public I(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lb/l/a/c;->Y:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lb/l/a/c;->Z:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lb/l/a/c;->a0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Lb/l/a/c;->b0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lb/l/a/c;->c0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public J()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2
    iget-object v0, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/l/a/c;->e0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2
    iget-object v0, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public Z(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lb/l/a/c;->f0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/l/a/c;->f0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/l/a/c;->g0:Z

    iget-object v2, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v2, p0, Lb/l/a/c;->W:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Lb/l/a/c;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lb/l/a/c;->W:Landroid/os/Handler;

    iget-object v2, p0, Lb/l/a/c;->X:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lb/l/a/c;->e0:Z

    iget p2, p0, Lb/l/a/c;->c0:I

    if-ltz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Lb/l/a/j;

    move-result-object p1

    iget p2, p0, Lb/l/a/c;->c0:I

    check-cast p1, Lb/l/a/k;

    if-ltz p2, :cond_3

    .line 1
    new-instance v2, Lb/l/a/k$i;

    invoke-direct {v2, p1, v3, p2, v0}, Lb/l/a/k$i;-><init>(Lb/l/a/k;Ljava/lang/String;II)V

    invoke-virtual {p1, v2, v1}, Lb/l/a/k;->N(Lb/l/a/k$h;Z)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lb/l/a/c;->c0:I

    goto :goto_2

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Lb/l/a/j;

    move-result-object p2

    check-cast p2, Lb/l/a/k;

    .line 5
    new-instance v0, Lb/l/a/a;

    invoke-direct {v0, p2}, Lb/l/a/a;-><init>(Lb/l/a/k;)V

    .line 6
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->s:Lb/l/a/k;

    if-eqz p2, :cond_6

    iget-object v2, v0, Lb/l/a/a;->r:Lb/l/a/k;

    if-ne p2, v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-static {p2}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already attached to a FragmentManager."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_6
    :goto_1
    new-instance p2, Lb/l/a/r$a;

    const/4 v2, 0x3

    invoke-direct {p2, v2, p0}, Lb/l/a/r$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, p2}, Lb/l/a/r;->c(Lb/l/a/r$a;)V

    if-eqz p1, :cond_7

    .line 8
    invoke-virtual {v0}, Lb/l/a/r;->e()I

    goto :goto_2

    .line 9
    :cond_7
    invoke-virtual {v0, v1}, Lb/l/a/a;->i(Z)I

    :goto_2
    return-void
.end method

.method public abstract a0(Landroid/os/Bundle;)Landroid/app/Dialog;
.end method

.method public b0(Lb/l/a/j;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/l/a/c;->f0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/l/a/c;->g0:Z

    check-cast p1, Lb/l/a/k;

    if-eqz p1, :cond_0

    .line 1
    new-instance v2, Lb/l/a/a;

    invoke-direct {v2, p1}, Lb/l/a/a;-><init>(Lb/l/a/k;)V

    .line 2
    invoke-virtual {v2, v0, p0, p2, v1}, Lb/l/a/r;->g(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v2, v0}, Lb/l/a/a;->i(Z)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lb/l/a/c;->e0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lb/l/a/c;->Z(ZZ)V

    :cond_0
    return-void
.end method

.method public y(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    .line 2
    iget-boolean v0, p0, Lb/l/a/c;->b0:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g()Lb/l/a/e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    iget-object v0, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    iget-boolean v1, p0, Lb/l/a/c;->a0:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lb/l/a/c;->d0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public z(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->z(Landroid/content/Context;)V

    iget-boolean p1, p0, Lb/l/a/c;->g0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/l/a/c;->f0:Z

    :cond_0
    return-void
.end method
