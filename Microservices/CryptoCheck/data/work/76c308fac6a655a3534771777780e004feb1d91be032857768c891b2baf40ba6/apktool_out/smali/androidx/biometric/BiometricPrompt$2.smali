.class public Landroidx/biometric/BiometricPrompt$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/n/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/biometric/BiometricPrompt;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricPrompt;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 4
    .annotation runtime Lb/n/n;
        value = .enum Lb/n/d$a;->ON_PAUSE:Lb/n/d$a;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 1
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt;->d()Lb/l/a/e;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt;->d()Lb/l/a/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 4
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, v0, Lb/d/a;->X:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "allow_device_credential"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    if-eqz v2, :cond_3

    .line 7
    iget-boolean v1, v0, Landroidx/biometric/BiometricPrompt;->g:Z

    if-nez v1, :cond_3

    .line 8
    iput-boolean v3, v0, Landroidx/biometric/BiometricPrompt;->g:Z

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    .line 10
    invoke-virtual {v0}, Lb/d/a;->Z()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 11
    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    if-eqz v1, :cond_5

    .line 12
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v1}, Lb/d/c;->c0()V

    invoke-virtual {v0, v2}, Lb/d/e;->Z(I)V

    .line 14
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    if-eqz v0, :cond_7

    .line 15
    sget-object v0, Lb/d/b;->j:Lb/d/b;

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0}, Lb/d/b;->b()V

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x0

    .line 17
    throw v0
.end method

.method public onResume()V
    .locals 6
    .annotation runtime Lb/n/n;
        value = .enum Lb/n/d$a;->ON_RESUME:Lb/n/d$a;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 1
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->a(Landroidx/biometric/BiometricPrompt;)Lb/l/a/j;

    move-result-object v1

    const-string v3, "BiometricFragment"

    invoke-virtual {v1, v3}, Lb/l/a/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lb/d/a;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    iput-object v1, v0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    .line 4
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 6
    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    if-eqz v1, :cond_1

    .line 7
    iget-object v3, v0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    .line 8
    iget-object v4, v0, Landroidx/biometric/BiometricPrompt;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    .line 10
    invoke-virtual {v1, v3, v4, v0}, Lb/d/a;->b0(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$b;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->a(Landroidx/biometric/BiometricPrompt;)Lb/l/a/j;

    move-result-object v1

    const-string v3, "FingerprintDialogFragment"

    invoke-virtual {v1, v3}, Lb/l/a/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lb/d/c;

    .line 11
    iput-object v1, v0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    .line 12
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->a(Landroidx/biometric/BiometricPrompt;)Lb/l/a/j;

    move-result-object v1

    const-string v3, "FingerprintHelperFragment"

    invoke-virtual {v1, v3}, Lb/l/a/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lb/d/e;

    .line 13
    iput-object v1, v0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    .line 14
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 15
    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    if-eqz v1, :cond_2

    .line 16
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 17
    iput-object v0, v1, Lb/d/c;->q0:Landroid/content/DialogInterface$OnClickListener;

    .line 18
    :cond_2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 19
    iget-object v1, v0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    if-eqz v1, :cond_3

    .line 20
    iget-object v3, v0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    .line 21
    iget-object v4, v0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    .line 22
    iput-object v3, v1, Lb/d/e;->X:Ljava/util/concurrent/Executor;

    iput-object v4, v1, Lb/d/e;->Y:Landroidx/biometric/BiometricPrompt$b;

    .line 23
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, v0, Lb/d/c;->h0:Lb/d/c$c;

    .line 25
    invoke-virtual {v1, v0}, Lb/d/e;->c0(Landroid/os/Handler;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 26
    iget-boolean v1, v0, Landroidx/biometric/BiometricPrompt;->h:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    goto :goto_3

    .line 27
    :cond_4
    sget-object v1, Lb/d/b;->j:Lb/d/b;

    if-eqz v1, :cond_9

    .line 28
    iget v4, v1, Lb/d/b;->h:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_3

    .line 29
    :cond_5
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt;->d()Lb/l/a/e;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt;->d()Lb/l/a/e;

    move-result-object v4

    sget v5, Lb/d/n;->generic_error_user_canceled:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    :cond_6
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    check-cast v0, Lcom/app/damnvulnerablebank/SendMoney$a;

    if-eqz v0, :cond_7

    goto :goto_2

    .line 30
    :cond_7
    throw v2

    .line 31
    :cond_8
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    new-instance v4, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {v4, v2}, Landroidx/biometric/BiometricPrompt$c;-><init>(Landroidx/biometric/BiometricPrompt$d;)V

    invoke-virtual {v0, v4}, Landroidx/biometric/BiometricPrompt$b;->a(Landroidx/biometric/BiometricPrompt$c;)V

    .line 32
    :goto_2
    iput v3, v1, Lb/d/b;->i:I

    .line 33
    invoke-virtual {v1}, Lb/d/b;->b()V

    .line 34
    :cond_9
    :goto_3
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->a:Landroidx/biometric/BiometricPrompt;

    .line 35
    invoke-virtual {v0, v3}, Landroidx/biometric/BiometricPrompt;->e(Z)V

    return-void
.end method
