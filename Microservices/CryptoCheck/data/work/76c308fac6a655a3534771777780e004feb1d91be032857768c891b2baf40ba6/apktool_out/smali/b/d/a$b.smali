.class public Lb/d/a$b;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/d/a;


# direct methods
.method public constructor <init>(Lb/d/a;)V
    .locals 0

    iput-object p1, p0, Lb/d/a$b;->a:Lb/d/a;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, La/a/a/a/a;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/d/a$b;->a:Lb/d/a;

    iget-object v0, v0, Lb/d/a;->Y:Ljava/util/concurrent/Executor;

    new-instance v1, Lb/d/a$b$a;

    invoke-direct {v1, p0, p2, p1}, Lb/d/a$b$a;-><init>(Lb/d/a$b;Ljava/lang/CharSequence;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lb/d/a$b;->a:Lb/d/a;

    invoke-virtual {p1}, Lb/d/a;->a0()V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lb/d/a$b;->a:Lb/d/a;

    iget-object v0, v0, Lb/d/a;->Y:Ljava/util/concurrent/Executor;

    new-instance v1, Lb/d/a$b$c;

    invoke-direct {v1, p0}, Lb/d/a$b$c;-><init>(Lb/d/a$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroidx/biometric/BiometricPrompt$c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Landroidx/biometric/BiometricPrompt$d;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/biometric/BiometricPrompt$d;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Landroidx/biometric/BiometricPrompt$d;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/biometric/BiometricPrompt$d;-><init>(Ljava/security/Signature;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Landroidx/biometric/BiometricPrompt$d;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/biometric/BiometricPrompt$d;-><init>(Ljavax/crypto/Mac;)V

    .line 2
    :cond_3
    :goto_0
    invoke-direct {v1, v0}, Landroidx/biometric/BiometricPrompt$c;-><init>(Landroidx/biometric/BiometricPrompt$d;)V

    goto :goto_1

    :cond_4
    invoke-direct {v1, v0}, Landroidx/biometric/BiometricPrompt$c;-><init>(Landroidx/biometric/BiometricPrompt$d;)V

    :goto_1
    iget-object p1, p0, Lb/d/a$b;->a:Lb/d/a;

    iget-object p1, p1, Lb/d/a;->Y:Ljava/util/concurrent/Executor;

    new-instance v0, Lb/d/a$b$b;

    invoke-direct {v0, p0, v1}, Lb/d/a$b$b;-><init>(Lb/d/a$b;Landroidx/biometric/BiometricPrompt$c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lb/d/a$b;->a:Lb/d/a;

    invoke-virtual {p1}, Lb/d/a;->a0()V

    return-void
.end method
