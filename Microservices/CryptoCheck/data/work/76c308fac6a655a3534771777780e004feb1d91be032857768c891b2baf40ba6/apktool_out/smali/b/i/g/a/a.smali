.class public Lb/i/g/a/a;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source ""


# instance fields
.field public final synthetic a:Lb/i/g/a/b$a;


# direct methods
.method public constructor <init>(Lb/i/g/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lb/i/g/a/a;->a:Lb/i/g/a/b$a;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lb/i/g/a/a;->a:Lb/i/g/a/b$a;

    check-cast v0, Lb/d/e$a;

    if-eqz v0, :cond_6

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 1
    iget-object v1, v0, Lb/d/e$a;->a:Lb/d/e;

    .line 2
    iget v1, v1, Lb/d/e;->d0:I

    if-nez v1, :cond_5

    goto :goto_2

    :cond_0
    const/4 v1, 0x7

    if-eq p1, v1, :cond_4

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got null string for error message: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "FingerprintHelperFrag"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, v0, Lb/d/e$a;->a:Lb/d/e;

    .line 4
    iget-object p2, p2, Lb/d/e;->c0:Landroid/content/Context;

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lb/d/n;->default_error_msg:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const/16 p1, 0x8

    :cond_3
    iget-object v2, v0, Lb/d/e$a;->a:Lb/d/e;

    .line 6
    iget-object v2, v2, Lb/d/e;->W:Lb/d/e$b;

    const/4 v3, 0x2

    .line 7
    iget-object v2, v2, Lb/d/e$b;->a:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 8
    iget-object v1, v0, Lb/d/e$a;->a:Lb/d/e;

    .line 9
    iget-object v1, v1, Lb/d/e;->Z:Landroid/os/Handler;

    .line 10
    new-instance v2, Lb/d/f;

    invoke-direct {v2, v0, p1, p2}, Lb/d/f;-><init>(Lb/d/e$a;ILjava/lang/CharSequence;)V

    iget-object p1, v0, Lb/d/e$a;->a:Lb/d/e;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->k()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/d/c;->d0(Landroid/content/Context;)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0, p1, p2}, Lb/d/e$a;->a(ILjava/lang/CharSequence;)V

    :cond_5
    iget-object p1, v0, Lb/d/e$a;->a:Lb/d/e;

    .line 11
    invoke-virtual {p1}, Lb/d/e;->a0()V

    :goto_3
    return-void

    :cond_6
    const/4 p1, 0x0

    .line 12
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onAuthenticationFailed()V
    .locals 5

    iget-object v0, p0, Lb/i/g/a/a;->a:Lb/i/g/a/b$a;

    check-cast v0, Lb/d/e$a;

    .line 1
    iget-object v1, v0, Lb/d/e$a;->a:Lb/d/e;

    .line 2
    iget-object v2, v1, Lb/d/e;->W:Lb/d/e$b;

    const/4 v3, 0x1

    .line 3
    iget-object v1, v1, Lb/d/e;->c0:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lb/d/n;->fingerprint_not_recognized:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, v2, Lb/d/e$b;->a:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 6
    iget-object v1, v0, Lb/d/e$a;->a:Lb/d/e;

    iget-object v1, v1, Lb/d/e;->X:Ljava/util/concurrent/Executor;

    new-instance v2, Lb/d/h;

    invoke-direct {v2, v0}, Lb/d/h;-><init>(Lb/d/e$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object p1, p0, Lb/i/g/a/a;->a:Lb/i/g/a/b$a;

    check-cast p1, Lb/d/e$a;

    .line 1
    iget-object p1, p1, Lb/d/e$a;->a:Lb/d/e;

    .line 2
    iget-object p1, p1, Lb/d/e;->W:Lb/d/e$b;

    const/4 v0, 0x1

    .line 3
    iget-object p1, p1, Lb/d/e$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 4

    iget-object v0, p0, Lb/i/g/a/a;->a:Lb/i/g/a/b$a;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lb/i/g/a/b$b;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {v2, p1}, Lb/i/g/a/b$b;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v2, Lb/i/g/a/b$b;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p1

    invoke-direct {v2, p1}, Lb/i/g/a/b$b;-><init>(Ljava/security/Signature;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lb/i/g/a/b$b;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p1

    invoke-direct {v2, p1}, Lb/i/g/a/b$b;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_1

    :cond_3
    :goto_0
    move-object v2, v1

    .line 2
    :goto_1
    check-cast v0, Lb/d/e$a;

    .line 3
    iget-object p1, v0, Lb/d/e$a;->a:Lb/d/e;

    .line 4
    iget-object p1, p1, Lb/d/e;->W:Lb/d/e$b;

    const/4 v3, 0x5

    .line 5
    invoke-virtual {p1, v3}, Lb/d/e$b;->a(I)V

    new-instance p1, Landroidx/biometric/BiometricPrompt$c;

    if-nez v2, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    iget-object v3, v2, Lb/i/g/a/b$b;->b:Ljavax/crypto/Cipher;

    if-eqz v3, :cond_5

    .line 7
    new-instance v1, Landroidx/biometric/BiometricPrompt$d;

    invoke-direct {v1, v3}, Landroidx/biometric/BiometricPrompt$d;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_2

    .line 8
    :cond_5
    iget-object v3, v2, Lb/i/g/a/b$b;->a:Ljava/security/Signature;

    if-eqz v3, :cond_6

    .line 9
    new-instance v1, Landroidx/biometric/BiometricPrompt$d;

    invoke-direct {v1, v3}, Landroidx/biometric/BiometricPrompt$d;-><init>(Ljava/security/Signature;)V

    goto :goto_2

    .line 10
    :cond_6
    iget-object v2, v2, Lb/i/g/a/b$b;->c:Ljavax/crypto/Mac;

    if-eqz v2, :cond_7

    .line 11
    new-instance v1, Landroidx/biometric/BiometricPrompt$d;

    invoke-direct {v1, v2}, Landroidx/biometric/BiometricPrompt$d;-><init>(Ljavax/crypto/Mac;)V

    .line 12
    :cond_7
    :goto_2
    invoke-direct {p1, v1}, Landroidx/biometric/BiometricPrompt$c;-><init>(Landroidx/biometric/BiometricPrompt$d;)V

    iget-object v1, v0, Lb/d/e$a;->a:Lb/d/e;

    iget-object v1, v1, Lb/d/e;->X:Ljava/util/concurrent/Executor;

    new-instance v2, Lb/d/g;

    invoke-direct {v2, v0, p1}, Lb/d/g;-><init>(Lb/d/e$a;Landroidx/biometric/BiometricPrompt$c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lb/d/e$a;->a:Lb/d/e;

    .line 13
    invoke-virtual {p1}, Lb/d/e;->a0()V

    return-void
.end method
