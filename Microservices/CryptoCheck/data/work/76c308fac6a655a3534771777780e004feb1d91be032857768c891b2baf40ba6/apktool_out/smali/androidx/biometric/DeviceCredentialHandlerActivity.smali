.class public Landroidx/biometric/DeviceCredentialHandlerActivity;
.super Lb/b/k/h;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SyntheticAccessor"
    }
.end annotation


# instance fields
.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/l/a/e;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->u(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lb/d/b;->a()Lb/d/b;

    move-result-object v0

    .line 1
    iget v1, v0, Lb/d/b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lb/b/k/h;->setTheme(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v3, Lb/d/o;->TransparentStyle:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    invoke-super {p0, p1}, Lb/b/k/h;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v3, "did_change_configuration"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->p:Z

    if-nez v2, :cond_2

    .line 3
    iput v1, v0, Lb/d/b;->i:I

    goto :goto_1

    .line 4
    :cond_2
    iput-boolean v1, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->p:Z

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lb/d/m;->device_credential_handler_activity:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    .line 5
    iget-object p1, v0, Lb/d/b;->e:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_4

    .line 6
    iget-object v0, v0, Lb/d/b;->f:Landroidx/biometric/BiometricPrompt$b;

    if-nez v0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    new-instance v1, Landroidx/biometric/BiometricPrompt;

    invoke-direct {v1, p0, p1, v0}, Landroidx/biometric/BiometricPrompt;-><init>(Lb/l/a/e;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$b;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "prompt_info_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroidx/biometric/BiometricPrompt$e;

    invoke-direct {v0, p1}, Landroidx/biometric/BiometricPrompt$e;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroidx/biometric/BiometricPrompt;->b(Landroidx/biometric/BiometricPrompt$e;)V

    goto :goto_3

    :cond_4
    :goto_2
    const-string p1, "DeviceCredentialHandler"

    const-string v0, "onCreate: Executor and/or callback was null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lb/l/a/e;->onPause()V

    .line 1
    sget-object v0, Lb/d/b;->j:Lb/d/b;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iget v1, v0, Lb/d/b;->i:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, v0, Lb/d/b;->i:I

    .line 4
    :cond_0
    iput-boolean v2, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->p:Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lb/b/k/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->p:Z

    const-string v1, "did_change_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public u(I)V
    .locals 4

    .line 1
    sget-object v0, Lb/d/b;->j:Lb/d/b;

    if-nez v0, :cond_0

    const-string p1, "DeviceCredentialHandler"

    const-string v0, "onActivityResult: Bridge or callback was null!"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput p1, v0, Lb/d/b;->h:I

    goto :goto_0

    :cond_1
    iput v3, v0, Lb/d/b;->h:I

    .line 4
    :goto_0
    iput-boolean v2, v0, Lb/d/b;->g:Z

    .line 5
    iput v3, v0, Lb/d/b;->i:I

    .line 6
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
