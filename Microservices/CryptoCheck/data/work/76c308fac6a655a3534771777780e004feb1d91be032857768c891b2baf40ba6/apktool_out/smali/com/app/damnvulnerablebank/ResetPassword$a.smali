.class public Lcom/app/damnvulnerablebank/ResetPassword$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/ResetPassword;->resetPassword(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/b/q$b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/app/damnvulnerablebank/ResetPassword;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/ResetPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/app/damnvulnerablebank/ResetPassword$a;->a:Lcom/app/damnvulnerablebank/ResetPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    iget-object p1, p0, Lcom/app/damnvulnerablebank/ResetPassword$a;->a:Lcom/app/damnvulnerablebank/ResetPassword;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Done"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/app/damnvulnerablebank/ResetPassword$a;->a:Lcom/app/damnvulnerablebank/ResetPassword;

    const-string v1, "jwt"

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "isloggedin"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/app/damnvulnerablebank/ResetPassword$a;->a:Lcom/app/damnvulnerablebank/ResetPassword;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/damnvulnerablebank/ResetPassword$a;->a:Lcom/app/damnvulnerablebank/ResetPassword;

    const-class v2, Lcom/app/damnvulnerablebank/BankLogin;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
