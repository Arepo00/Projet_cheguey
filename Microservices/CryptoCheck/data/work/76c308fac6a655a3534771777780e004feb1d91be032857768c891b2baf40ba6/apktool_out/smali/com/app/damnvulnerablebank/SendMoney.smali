.class public Lcom/app/damnvulnerablebank/SendMoney;
.super Lb/b/k/h;
.source ""


# instance fields
.field public p:Landroid/widget/Button;

.field public q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public Biometrics(Landroid/view/View;)V
    .locals 6

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_0

    .line 2
    const-class p1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lb/i/g/a/b;

    invoke-direct {p1, p0}, Lb/i/g/a/b;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 4
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-lt v2, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate()I

    move-result p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lb/i/g/a/b;->c()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lb/i/g/a/b;->b()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0xb

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v0, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_3

    :cond_4
    const-string p1, "No fingerprint sensor"

    goto :goto_2

    :cond_5
    const-string p1, "Your device don\'t have any fingerprint, check your security setting"

    goto :goto_2

    :cond_6
    const-string p1, "Biometric sensor is not available"

    .line 7
    :goto_2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/app/damnvulnerablebank/SendMoney;->p:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const-string p1, "Authenticate to continue"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    invoke-static {p0}, Lb/i/e/a;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Landroidx/biometric/BiometricPrompt;

    new-instance v2, Lcom/app/damnvulnerablebank/SendMoney$a;

    invoke-direct {v2, p0}, Lcom/app/damnvulnerablebank/SendMoney$a;-><init>(Lcom/app/damnvulnerablebank/SendMoney;)V

    invoke-direct {v1, p0, p1, v2}, Landroidx/biometric/BiometricPrompt;-><init>(Lb/l/a/e;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$b;)V

    .line 8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    const-string v3, "Login"

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "description"

    const-string v4, "User fingerprint to Proceed"

    .line 10
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "allow_device_credential"

    .line 11
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "negative_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "handling_device_credential_result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative text must be set and non-empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t have both negative button behavior and device credential enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    if-eqz v4, :cond_d

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t be handling device credential result without device credential enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_6
    new-instance v0, Landroidx/biometric/BiometricPrompt$e;

    invoke-direct {v0, p1}, Landroidx/biometric/BiometricPrompt$e;-><init>(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {v1, v0}, Landroidx/biometric/BiometricPrompt;->b(Landroidx/biometric/BiometricPrompt$e;)V

    return-void

    .line 14
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Title must be set and non-empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/b/k/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0027

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    const p1, 0x7f0a0033

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/SendMoney;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "beneficiary_account_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/app/damnvulnerablebank/SendMoney;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a015c

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/SendMoney;->p:Landroid/widget/Button;

    return-void
.end method
