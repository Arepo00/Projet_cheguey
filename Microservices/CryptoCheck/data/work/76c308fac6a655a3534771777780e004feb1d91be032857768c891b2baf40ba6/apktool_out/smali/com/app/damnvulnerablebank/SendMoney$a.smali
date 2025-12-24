.class public Lcom/app/damnvulnerablebank/SendMoney$a;
.super Landroidx/biometric/BiometricPrompt$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/SendMoney;->Biometrics(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/app/damnvulnerablebank/SendMoney;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/SendMoney;)V
    .locals 0

    iput-object p1, p0, Lcom/app/damnvulnerablebank/SendMoney$a;->a:Lcom/app/damnvulnerablebank/SendMoney;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/biometric/BiometricPrompt$c;)V
    .locals 10

    iget-object p1, p0, Lcom/app/damnvulnerablebank/SendMoney$a;->a:Lcom/app/damnvulnerablebank/SendMoney;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "Transfer Successful"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/app/damnvulnerablebank/SendMoney$a;->a:Lcom/app/damnvulnerablebank/SendMoney;

    const-string p1, "jwt"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "accesstoken"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "apiurl"

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "/api/balance/transfer"

    invoke-static {p1, v2}, Lc/a/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f0a009d

    invoke-virtual {v1, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v2, 0x7f0a009e

    invoke-virtual {v1, v2}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, La/a/a/a/a;->Z(Landroid/content/Context;)Lc/a/b/p;

    move-result-object v8

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, ""

    if-eq v6, v9, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eq v6, v9, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "Invalid Input "

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/app/damnvulnerablebank/SendMoney;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    :goto_0
    const-string v2, "to_account"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "amount"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "enc_data"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/b/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    new-instance p1, Lc/b/a/p;

    const/4 v2, 0x1

    new-instance v6, Lc/b/a/n;

    invoke-direct {v6, v1}, Lc/b/a/n;-><init>(Lcom/app/damnvulnerablebank/SendMoney;)V

    new-instance v9, Lc/b/a/o;

    invoke-direct {v9, v1}, Lc/b/a/o;-><init>(Lcom/app/damnvulnerablebank/SendMoney;)V

    move-object v0, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lc/b/a/p;-><init>(Lcom/app/damnvulnerablebank/SendMoney;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Lc/a/b/p;->a(Lc/a/b/o;)Lc/a/b/o;

    return-void
.end method
