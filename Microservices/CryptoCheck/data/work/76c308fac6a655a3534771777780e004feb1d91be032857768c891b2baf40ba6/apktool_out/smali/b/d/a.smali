.class public Lb/d/a;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SyntheticAccessor"
    }
.end annotation


# instance fields
.field public W:Landroid/content/Context;

.field public X:Landroid/os/Bundle;

.field public Y:Ljava/util/concurrent/Executor;

.field public Z:Landroid/content/DialogInterface$OnClickListener;

.field public a0:Landroidx/biometric/BiometricPrompt$b;

.field public b0:Landroidx/biometric/BiometricPrompt$d;

.field public c0:Ljava/lang/CharSequence;

.field public d0:Z

.field public e0:Landroid/hardware/biometrics/BiometricPrompt;

.field public f0:Landroid/os/CancellationSignal;

.field public g0:Z

.field public final h0:Landroid/os/Handler;

.field public final i0:Ljava/util/concurrent/Executor;

.field public final j0:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field public final k0:Landroid/content/DialogInterface$OnClickListener;

.field public final l0:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lb/d/a;->h0:Landroid/os/Handler;

    new-instance v0, Lb/d/a$a;

    invoke-direct {v0, p0}, Lb/d/a$a;-><init>(Lb/d/a;)V

    iput-object v0, p0, Lb/d/a;->i0:Ljava/util/concurrent/Executor;

    new-instance v0, Lb/d/a$b;

    invoke-direct {v0, p0}, Lb/d/a$b;-><init>(Lb/d/a;)V

    iput-object v0, p0, Lb/d/a;->j0:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    new-instance v0, Lb/d/a$c;

    invoke-direct {v0, p0}, Lb/d/a$c;-><init>(Lb/d/a;)V

    iput-object v0, p0, Lb/d/a;->k0:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lb/d/a$d;

    invoke-direct {v0, p0}, Lb/d/a$d;-><init>(Lb/d/a;)V

    iput-object v0, p0, Lb/d/a;->l0:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->A(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->X(Z)V

    return-void
.end method

.method public B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    iget-boolean p1, p0, Lb/d/a;->d0:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_9

    iget-object p1, p0, Lb/d/a;->X:Landroid/os/Bundle;

    if-eqz p1, :cond_9

    const-string v0, "negative_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb/d/a;->c0:Ljava/lang/CharSequence;

    new-instance p1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lb/d/a;->X:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lb/d/a;->X:Landroid/os/Bundle;

    const-string v2, "subtitle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lb/d/a;->X:Landroid/os/Bundle;

    const-string v2, "description"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lb/d/a;->X:Landroid/os/Bundle;

    const-string v1, "allow_device_credential"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    sget v1, Lb/d/n;->confirm_device_credential_password:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->t(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/d/a;->c0:Ljava/lang/CharSequence;

    iget-object v2, p0, Lb/d/a;->Y:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lb/d/a;->l0:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/d/a;->c0:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/d/a;->c0:Ljava/lang/CharSequence;

    iget-object v2, p0, Lb/d/a;->Y:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lb/d/a;->k0:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lb/d/a;->X:Landroid/os/Bundle;

    const-string v2, "require_confirmation"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/d/a;->g0:Z

    iget-object v0, p0, Lb/d/a;->h0:Landroid/os/Handler;

    new-instance v1, Lb/d/a$e;

    invoke-direct {v1, p0}, Lb/d/a$e;-><init>(Lb/d/a;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p1

    iput-object p1, p0, Lb/d/a;->e0:Landroid/hardware/biometrics/BiometricPrompt;

    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lb/d/a;->f0:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lb/d/a;->b0:Landroidx/biometric/BiometricPrompt$d;

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/d/a;->e0:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v1, p0, Lb/d/a;->i0:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lb/d/a;->j0:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lb/d/a;->e0:Landroid/hardware/biometrics/BiometricPrompt;

    if-nez v0, :cond_5

    goto :goto_1

    .line 1
    :cond_5
    iget-object v1, v0, Landroidx/biometric/BiometricPrompt$d;->b:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_6

    .line 2
    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 3
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$d;->b:Ljavax/crypto/Cipher;

    .line 4
    invoke-direct {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    goto :goto_2

    .line 5
    :cond_6
    iget-object v1, v0, Landroidx/biometric/BiometricPrompt$d;->a:Ljava/security/Signature;

    if-eqz v1, :cond_7

    .line 6
    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 7
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$d;->a:Ljava/security/Signature;

    .line 8
    invoke-direct {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    goto :goto_2

    .line 9
    :cond_7
    iget-object v1, v0, Landroidx/biometric/BiometricPrompt$d;->c:Ljavax/crypto/Mac;

    if-eqz v1, :cond_8

    .line 10
    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 11
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$d;->c:Ljavax/crypto/Mac;

    .line 12
    invoke-direct {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    goto :goto_2

    :cond_8
    :goto_1
    move-object v1, p2

    .line 13
    :goto_2
    iget-object v0, p0, Lb/d/a;->f0:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lb/d/a;->i0:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lb/d/a;->j0:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    :cond_9
    :goto_3
    iput-boolean p3, p0, Lb/d/a;->d0:Z

    return-object p2
.end method

.method public Z()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 1
    iget-object v0, p0, Lb/d/a;->X:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "allow_device_credential"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lb/d/a;->g0:Z

    if-nez v0, :cond_1

    const-string v0, "BiometricFragment"

    const-string v1, "Ignoring fast cancel signal"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lb/d/a;->f0:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lb/d/a;->a0()V

    return-void
.end method

.method public a0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/d/a;->d0:Z

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

    .line 4
    :cond_0
    instance-of v1, v0, Landroidx/biometric/DeviceCredentialHandlerActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public b0(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$b;)V
    .locals 0

    iput-object p1, p0, Lb/d/a;->Y:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lb/d/a;->Z:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lb/d/a;->a0:Landroidx/biometric/BiometricPrompt$b;

    return-void
.end method

.method public z(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->z(Landroid/content/Context;)V

    iput-object p1, p0, Lb/d/a;->W:Landroid/content/Context;

    return-void
.end method
