.class public Landroidx/biometric/BiometricPrompt$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/BiometricPrompt$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/biometric/BiometricPrompt$a;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricPrompt$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$a$a;->b:Landroidx/biometric/BiometricPrompt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$a$a;->b:Landroidx/biometric/BiometricPrompt$a;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$a;->b:Landroidx/biometric/BiometricPrompt;

    .line 3
    iget-object v2, v0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, v2, Lb/d/a;->c0:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    .line 6
    check-cast v0, Lcom/app/damnvulnerablebank/SendMoney$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$a$a;->b:Landroidx/biometric/BiometricPrompt$a;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$a;->b:Landroidx/biometric/BiometricPrompt;

    .line 7
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->f:Lb/d/a;

    .line 8
    invoke-virtual {v0}, Lb/d/a;->a0()V

    goto :goto_0

    .line 9
    :cond_0
    throw v1

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$a$a;->b:Landroidx/biometric/BiometricPrompt$a;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$a;->b:Landroidx/biometric/BiometricPrompt;

    .line 11
    iget-object v2, v0, Landroidx/biometric/BiometricPrompt;->d:Lb/d/c;

    if-eqz v2, :cond_3

    .line 12
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, v2, Lb/d/c;->i0:Landroid/os/Bundle;

    const-string v2, "negative_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 14
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt$a$a;->b:Landroidx/biometric/BiometricPrompt$a;

    iget-object v2, v2, Landroidx/biometric/BiometricPrompt$a;->b:Landroidx/biometric/BiometricPrompt;

    .line 15
    iget-object v2, v2, Landroidx/biometric/BiometricPrompt;->c:Landroidx/biometric/BiometricPrompt$b;

    .line 16
    check-cast v2, Lcom/app/damnvulnerablebank/SendMoney$a;

    if-eqz v2, :cond_2

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$a$a;->b:Landroidx/biometric/BiometricPrompt$a;

    iget-object v0, v0, Landroidx/biometric/BiometricPrompt$a;->b:Landroidx/biometric/BiometricPrompt;

    .line 17
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->e:Lb/d/e;

    const/4 v1, 0x2

    .line 18
    invoke-virtual {v0, v1}, Lb/d/e;->Z(I)V

    goto :goto_0

    .line 19
    :cond_2
    throw v1

    :cond_3
    const-string v0, "BiometricPromptCompat"

    const-string v1, "Negative button callback not run. Fragment was null."

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
