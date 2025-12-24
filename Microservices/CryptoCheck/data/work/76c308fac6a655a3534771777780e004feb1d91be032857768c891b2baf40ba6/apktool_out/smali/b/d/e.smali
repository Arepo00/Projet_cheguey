.class public Lb/d/e;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SyntheticAccessor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/e$b;
    }
.end annotation


# instance fields
.field public W:Lb/d/e$b;

.field public X:Ljava/util/concurrent/Executor;

.field public Y:Landroidx/biometric/BiometricPrompt$b;

.field public Z:Landroid/os/Handler;

.field public a0:Z

.field public b0:Landroidx/biometric/BiometricPrompt$d;

.field public c0:Landroid/content/Context;

.field public d0:I

.field public e0:Lb/i/i/a;

.field public final f0:Lb/i/g/a/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lb/d/e$a;

    invoke-direct {v0, p0}, Lb/d/e$a;-><init>(Lb/d/e;)V

    iput-object v0, p0, Lb/d/e;->f0:Lb/i/g/a/b$a;

    return-void
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->A(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->X(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/d/e;->c0:Landroid/content/Context;

    return-void
.end method

.method public B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    iget-boolean p1, p0, Lb/d/e;->a0:Z

    const/4 p2, 0x0

    if-nez p1, :cond_10

    new-instance p1, Lb/i/i/a;

    invoke-direct {p1}, Lb/i/i/a;-><init>()V

    iput-object p1, p0, Lb/d/e;->e0:Lb/i/i/a;

    const/4 p1, 0x0

    iput p1, p0, Lb/d/e;->d0:I

    iget-object p3, p0, Lb/d/e;->c0:Landroid/content/Context;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p3}, Lb/i/g/a/b;->a(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 p1, 0xc

    goto :goto_2

    .line 2
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    invoke-static {p3}, Lb/i/g/a/b;->a(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    const/16 p1, 0xb

    .line 3
    :goto_2
    invoke-virtual {p0, p1}, Lb/d/e;->b0(I)V

    const/4 p1, 0x1

    :cond_3
    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lb/d/e;->W:Lb/d/e$b;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Lb/d/e$b;->a(I)V

    invoke-virtual {p0}, Lb/d/e;->a0()V

    goto/16 :goto_9

    :cond_4
    iget-object p1, p0, Lb/d/e;->b0:Landroidx/biometric/BiometricPrompt$d;

    if-nez p1, :cond_5

    goto :goto_3

    .line 5
    :cond_5
    iget-object v0, p1, Landroidx/biometric/BiometricPrompt$d;->b:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_6

    .line 6
    new-instance p1, Lb/i/g/a/b$b;

    invoke-direct {p1, v0}, Lb/i/g/a/b$b;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_4

    .line 7
    :cond_6
    iget-object v0, p1, Landroidx/biometric/BiometricPrompt$d;->a:Ljava/security/Signature;

    if-eqz v0, :cond_7

    .line 8
    new-instance p1, Lb/i/g/a/b$b;

    invoke-direct {p1, v0}, Lb/i/g/a/b$b;-><init>(Ljava/security/Signature;)V

    goto :goto_4

    .line 9
    :cond_7
    iget-object p1, p1, Landroidx/biometric/BiometricPrompt$d;->c:Ljavax/crypto/Mac;

    if-eqz p1, :cond_8

    .line 10
    new-instance v0, Lb/i/g/a/b$b;

    invoke-direct {v0, p1}, Lb/i/g/a/b$b;-><init>(Ljavax/crypto/Mac;)V

    move-object p1, v0

    goto :goto_4

    :cond_8
    :goto_3
    move-object p1, p2

    :goto_4
    const/4 v6, 0x0

    .line 11
    iget-object v0, p0, Lb/d/e;->e0:Lb/i/i/a;

    iget-object v3, p0, Lb/d/e;->f0:Lb/i/g/a/b$a;

    const/4 v8, 0x0

    .line 12
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_f

    invoke-static {p3}, Lb/i/g/a/b;->a(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p3

    if-eqz p3, :cond_f

    if-eqz v0, :cond_a

    .line 13
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lb/i/i/a;->b:Ljava/lang/Object;

    if-nez v1, :cond_9

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, v0, Lb/i/i/a;->b:Ljava/lang/Object;

    iget-boolean v4, v0, Lb/i/i/a;->a:Z

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_9
    iget-object v1, v0, Lb/i/i/a;->b:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    check-cast v1, Landroid/os/CancellationSignal;

    move-object v5, v1

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    move-object v5, p2

    :goto_5
    if-nez p1, :cond_b

    goto :goto_7

    .line 16
    :cond_b
    iget-object v0, p1, Lb/i/g/a/b$b;->b:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_c

    .line 17
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 18
    iget-object p1, p1, Lb/i/g/a/b$b;->b:Ljavax/crypto/Cipher;

    .line 19
    invoke-direct {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    :goto_6
    move-object v4, v0

    goto :goto_8

    .line 20
    :cond_c
    iget-object v0, p1, Lb/i/g/a/b$b;->a:Ljava/security/Signature;

    if-eqz v0, :cond_d

    .line 21
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 22
    iget-object p1, p1, Lb/i/g/a/b$b;->a:Ljava/security/Signature;

    .line 23
    invoke-direct {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    goto :goto_6

    .line 24
    :cond_d
    iget-object v0, p1, Lb/i/g/a/b$b;->c:Ljavax/crypto/Mac;

    if-eqz v0, :cond_e

    .line 25
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 26
    iget-object p1, p1, Lb/i/g/a/b$b;->c:Ljavax/crypto/Mac;

    .line 27
    invoke-direct {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_6

    :cond_e
    :goto_7
    move-object v4, p2

    .line 28
    :goto_8
    new-instance v7, Lb/i/g/a/a;

    invoke-direct {v7, v3}, Lb/i/g/a/a;-><init>(Lb/i/g/a/b$a;)V

    move-object v3, p3

    .line 29
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 30
    :cond_f
    iput-boolean v2, p0, Lb/d/e;->a0:Z

    :cond_10
    :goto_9
    return-object p2
.end method

.method public Z(I)V
    .locals 2

    iput p1, p0, Lb/d/e;->d0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lb/d/e;->b0(I)V

    :cond_0
    iget-object p1, p0, Lb/d/e;->e0:Lb/i/i/a;

    if-eqz p1, :cond_3

    .line 1
    monitor-enter p1

    :try_start_0
    iget-boolean v1, p1, Lb/i/i/a;->a:Z

    if-eqz v1, :cond_1

    monitor-exit p1

    goto :goto_1

    :cond_1
    iput-boolean v0, p1, Lb/i/i/a;->a:Z

    iget-object v0, p1, Lb/i/i/a;->b:Ljava/lang/Object;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_2

    :try_start_1
    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-enter p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    :goto_0
    monitor-enter p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 2
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lb/d/e;->a0()V

    return-void
.end method

.method public final a0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/d/e;->a0:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->g()Lb/l/a/e;

    move-result-object v0

    .line 1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->s:Lb/l/a/k;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Lb/l/a/a;

    invoke-direct {v2, v1}, Lb/l/a/a;-><init>(Lb/l/a/k;)V

    .line 3
    invoke-virtual {v2, p0}, Lb/l/a/r;->f(Landroidx/fragment/app/Fragment;)Lb/l/a/r;

    invoke-virtual {v2}, Lb/l/a/r;->e()I

    :cond_0
    invoke-static {}, La/a/a/a/a;->Q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    instance-of v1, v0, Landroidx/biometric/DeviceCredentialHandlerActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final b0(I)V
    .locals 4

    invoke-static {}, La/a/a/a/a;->Q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/d/e;->Y:Landroidx/biometric/BiometricPrompt$b;

    iget-object v1, p0, Lb/d/e;->c0:Landroid/content/Context;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FingerprintHelperFrag"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lb/d/n;->default_error_msg:I

    goto :goto_0

    :pswitch_0
    sget p1, Lb/d/n;->fingerprint_error_hw_not_present:I

    goto :goto_0

    :pswitch_1
    sget p1, Lb/d/n;->fingerprint_error_no_fingerprints:I

    goto :goto_0

    :pswitch_2
    sget p1, Lb/d/n;->fingerprint_error_user_canceled:I

    goto :goto_0

    :cond_0
    sget p1, Lb/d/n;->fingerprint_error_hw_not_available:I

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2
    check-cast v0, Lcom/app/damnvulnerablebank/SendMoney$a;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c0(Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lb/d/e;->Z:Landroid/os/Handler;

    new-instance v0, Lb/d/e$b;

    invoke-direct {v0, p1}, Lb/d/e$b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lb/d/e;->W:Lb/d/e$b;

    return-void
.end method
