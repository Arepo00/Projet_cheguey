.class public Landroidx/biometric/BiometricPrompt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SyntheticAccessor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$e;,
        Landroidx/biometric/BiometricPrompt$b;,
        Landroidx/biometric/BiometricPrompt$c;,
        Landroidx/biometric/BiometricPrompt$d;
    }
.end annotation


# instance fields
.field public a:Lb/l/a/e;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/biometric/BiometricPrompt$b;

.field public d:Lb/d/c;

.field public e:Lb/d/e;

.field public f:Lb/d/a;

.field public g:Z

.field public h:Z

.field public final i:Landroid/content/DialogInterface$OnClickListener;

.field public final j:Lb/n/f;


# direct methods
.method public constructor <init>(Lb/l/a/e;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$b;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/biometric/BiometricPrompt$a;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$a;-><init>(Landroidx/biometric/BiometricPrompt;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->i:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Landroidx/biometric/BiometricPrompt$2;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$2;-><init>(Landroidx/biometric/BiometricPrompt;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->j:Lb/n/f;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->a:Lb/l/a/e;

    iput-object p3, p0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    iput-object p2, p0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    .line 1
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->c:Lb/n/h;

    .line 2
    invoke-virtual {p1, v0}, Lb/n/d;->a(Lb/n/f;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroidx/biometric/BiometricPrompt;)Lb/l/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->a:Lb/l/a/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb/l/a/e;->m()Lb/l/a/j;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public b(Landroidx/biometric/BiometricPrompt$e;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/biometric/BiometricPrompt$e;->a:Landroid/os/Bundle;

    const-string v1, "handling_device_credential_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iput-boolean v0, p0, Landroidx/biometric/BiometricPrompt;->h:Z

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt;->d()Lb/l/a/e;

    move-result-object v0

    .line 3
    iget-object v2, p1, Landroidx/biometric/BiometricPrompt$e;->a:Landroid/os/Bundle;

    const-string v3, "allow_device_credential"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x1c

    const/4 v4, 0x1

    const-string v5, "BiometricPromptCompat"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_9

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_9

    iget-boolean v2, p0, Landroidx/biometric/BiometricPrompt;->h:Z

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt;->d()Lb/l/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Landroidx/biometric/BiometricPrompt;->e(Z)V

    .line 6
    iget-object p1, p1, Landroidx/biometric/BiometricPrompt$e;->a:Landroid/os/Bundle;

    .line 7
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroidx/biometric/DeviceCredentialHandlerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "prompt_info_bundle"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    :cond_1
    :goto_0
    const-string p1, "Failed to start handler activity. Parent activity was null or finishing."

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_2
    if-nez v0, :cond_3

    const-string p1, "Failed to authenticate with device credential. Activity was null."

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Lb/d/b;->j:Lb/d/b;

    if-nez v1, :cond_4

    const-string p1, "Failed to authenticate with device credential. Bridge was null."

    .line 9
    :goto_1
    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 10
    :cond_4
    iget-boolean v1, v1, Lb/d/b;->g:Z

    if-nez v1, :cond_9

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_5

    .line 12
    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricManager;

    move-object v3, v1

    move-object v1, v6

    goto :goto_2

    .line 13
    :cond_5
    new-instance v1, Lb/i/g/a/b;

    invoke-direct {v1, v0}, Lb/i/g/a/b;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 14
    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_6

    .line 15
    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate()I

    move-result v1

    goto :goto_3

    .line 16
    :cond_6
    invoke-virtual {v1}, Lb/i/g/a/b;->c()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v1, 0xc

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lb/i/g/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0xb

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_9

    .line 17
    iget-object p1, p1, Landroidx/biometric/BiometricPrompt$e;->a:Landroid/os/Bundle;

    .line 18
    invoke-static {v5, v0, p1, v6}, La/a/a/a/a;->T(Ljava/lang/String;Lb/l/a/e;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    goto/16 :goto_b

    .line 19
    :cond_9
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->a:Lb/l/a/e;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lb/l/a/e;->m()Lb/l/a/j;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lb/l/a/j;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p1, "Not launching prompt. authenticate() called after onSaveInstanceState()"

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 21
    :cond_a
    iget-object p1, p1, Landroidx/biometric/BiometricPrompt$e;->a:Landroid/os/Bundle;

    .line 22
    iput-boolean v7, p0, Landroidx/biometric/BiometricPrompt;->g:Z

    invoke-static {}, Landroidx/biometric/BiometricPrompt;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "BiometricFragment"

    invoke-virtual {v1, v0}, Lb/l/a/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lb/d/a;

    if-eqz v2, :cond_b

    iput-object v2, p0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    goto :goto_4

    .line 23
    :cond_b
    new-instance v3, Lb/d/a;

    invoke-direct {v3}, Lb/d/a;-><init>()V

    .line 24
    iput-object v3, p0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    :goto_4
    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    iget-object v4, p0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroidx/biometric/BiometricPrompt;->i:Landroid/content/DialogInterface$OnClickListener;

    iget-object v7, p0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    invoke-virtual {v3, v4, v5, v7}, Lb/d/a;->b0(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$b;)V

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    .line 25
    iput-object v6, v3, Lb/d/a;->b0:Landroidx/biometric/BiometricPrompt$d;

    .line 26
    iput-object p1, v3, Lb/d/a;->X:Landroid/os/Bundle;

    if-nez v2, :cond_c

    .line 27
    move-object p1, v1

    check-cast p1, Lb/l/a/k;

    .line 28
    new-instance v2, Lb/l/a/a;

    invoke-direct {v2, p1}, Lb/l/a/a;-><init>(Lb/l/a/k;)V

    .line 29
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    invoke-virtual {v2, p1, v0}, Lb/l/a/r;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/l/a/r;

    goto/16 :goto_a

    .line 30
    :cond_c
    iget-boolean p1, v3, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz p1, :cond_13

    .line 31
    move-object p1, v1

    check-cast p1, Lb/l/a/k;

    .line 32
    new-instance v0, Lb/l/a/a;

    invoke-direct {v0, p1}, Lb/l/a/a;-><init>(Lb/l/a/k;)V

    .line 33
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    :goto_5
    move-object v2, v0

    goto/16 :goto_9

    :cond_d
    const-string v2, "FingerprintDialogFragment"

    invoke-virtual {v1, v2}, Lb/l/a/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lb/d/c;

    if-eqz v3, :cond_e

    iput-object v3, p0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    goto :goto_6

    .line 34
    :cond_e
    new-instance v4, Lb/d/c;

    invoke-direct {v4}, Lb/d/c;-><init>()V

    .line 35
    iput-object v4, p0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    :goto_6
    iget-object v4, p0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    iget-object v5, p0, Landroidx/biometric/BiometricPrompt;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    iput-object v5, v4, Lb/d/c;->q0:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    iput-object p1, v4, Lb/d/c;->i0:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    .line 38
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, p1}, La/a/a/a/a;->y0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    if-nez v3, :cond_f

    invoke-virtual {p1, v1, v2}, Lb/l/a/c;->b0(Lb/l/a/j;Ljava/lang/String;)V

    goto :goto_7

    .line 39
    :cond_f
    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz p1, :cond_10

    .line 40
    move-object p1, v1

    check-cast p1, Lb/l/a/k;

    .line 41
    new-instance v0, Lb/l/a/a;

    invoke-direct {v0, p1}, Lb/l/a/a;-><init>(Lb/l/a/k;)V

    .line 42
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    invoke-virtual {v0, p1}, Lb/l/a/r;->d(Landroidx/fragment/app/Fragment;)Lb/l/a/r;

    invoke-virtual {v0}, Lb/l/a/r;->e()I

    :cond_10
    :goto_7
    const-string p1, "FingerprintHelperFragment"

    invoke-virtual {v1, p1}, Lb/l/a/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lb/d/e;

    if-eqz v0, :cond_11

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    goto :goto_8

    .line 43
    :cond_11
    new-instance v2, Lb/d/e;

    invoke-direct {v2}, Lb/d/e;-><init>()V

    .line 44
    iput-object v2, p0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    :goto_8
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    .line 45
    iput-object v3, v2, Lb/d/e;->X:Ljava/util/concurrent/Executor;

    iput-object v4, v2, Lb/d/e;->Y:Landroidx/biometric/BiometricPrompt$b;

    .line 46
    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    .line 47
    iget-object v3, v3, Lb/d/c;->h0:Lb/d/c$c;

    .line 48
    invoke-virtual {v2, v3}, Lb/d/e;->c0(Landroid/os/Handler;)V

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    .line 49
    iput-object v6, v2, Lb/d/e;->b0:Landroidx/biometric/BiometricPrompt$d;

    const/4 v2, 0x6

    .line 50
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez v0, :cond_12

    move-object v0, v1

    check-cast v0, Lb/l/a/k;

    .line 51
    new-instance v2, Lb/l/a/a;

    invoke-direct {v2, v0}, Lb/l/a/a;-><init>(Lb/l/a/k;)V

    .line 52
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    invoke-virtual {v2, v0, p1}, Lb/l/a/r;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/l/a/r;

    goto :goto_a

    :cond_12
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    .line 53
    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz p1, :cond_13

    .line 54
    move-object p1, v1

    check-cast p1, Lb/l/a/k;

    .line 55
    new-instance v0, Lb/l/a/a;

    invoke-direct {v0, p1}, Lb/l/a/a;-><init>(Lb/l/a/k;)V

    .line 56
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    goto/16 :goto_5

    :goto_9
    invoke-virtual {v2, p1}, Lb/l/a/r;->d(Landroidx/fragment/app/Fragment;)Lb/l/a/r;

    :goto_a
    invoke-virtual {v2}, Lb/l/a/r;->e()I

    :cond_13
    check-cast v1, Lb/l/a/k;

    .line 57
    invoke-virtual {v1}, Lb/l/a/k;->P()Z

    invoke-virtual {v1}, Lb/l/a/k;->U()V

    :goto_b
    return-void

    .line 58
    :cond_14
    throw v6
.end method

.method public final d()Lb/l/a/e;
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->a:Lb/l/a/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final e(Z)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lb/d/b;->a()Lb/d/b;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/biometric/BiometricPrompt;->h:Z

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/biometric/BiometricPrompt;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    if-eqz v1, :cond_1

    .line 1
    iput-object v1, v0, Lb/d/b;->b:Lb/d/a;

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    if-eqz v2, :cond_3

    .line 3
    iput-object v1, v0, Lb/d/b;->c:Lb/d/c;

    iput-object v2, v0, Lb/d/b;->d:Lb/d/e;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt;->d()Lb/l/a/e;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    .line 5
    iput v1, v0, Lb/d/b;->a:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BiometricPromptCompat"

    const-string v3, "Failed to register client theme to bridge"

    .line 6
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->i:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    .line 7
    iput-object v1, v0, Lb/d/b;->e:Ljava/util/concurrent/Executor;

    iput-object v3, v0, Lb/d/b;->f:Landroidx/biometric/BiometricPrompt$b;

    iget-object v4, v0, Lb/d/b;->b:Lb/d/a;

    if-eqz v4, :cond_4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_4

    .line 8
    iput-object v1, v4, Lb/d/a;->Y:Ljava/util/concurrent/Executor;

    iput-object v2, v4, Lb/d/a;->Z:Landroid/content/DialogInterface$OnClickListener;

    iput-object v3, v4, Lb/d/a;->a0:Landroidx/biometric/BiometricPrompt$b;

    goto :goto_1

    .line 9
    :cond_4
    iget-object v4, v0, Lb/d/b;->c:Lb/d/c;

    if-eqz v4, :cond_5

    iget-object v5, v0, Lb/d/b;->d:Lb/d/e;

    if-eqz v5, :cond_5

    .line 10
    iput-object v2, v4, Lb/d/c;->q0:Landroid/content/DialogInterface$OnClickListener;

    .line 11
    iput-object v1, v5, Lb/d/e;->X:Ljava/util/concurrent/Executor;

    iput-object v3, v5, Lb/d/e;->Y:Landroidx/biometric/BiometricPrompt$b;

    .line 12
    iget-object v1, v4, Lb/d/c;->h0:Lb/d/c$c;

    .line 13
    invoke-virtual {v5, v1}, Lb/d/e;->c0(Landroid/os/Handler;)V

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    const/4 p1, 0x2

    .line 14
    iput p1, v0, Lb/d/b;->i:I

    :cond_6
    return-void
.end method
