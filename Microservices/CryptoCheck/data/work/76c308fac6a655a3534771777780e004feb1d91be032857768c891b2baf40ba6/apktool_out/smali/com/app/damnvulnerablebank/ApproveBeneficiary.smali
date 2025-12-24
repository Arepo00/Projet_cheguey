.class public Lcom/app/damnvulnerablebank/ApproveBeneficiary;
.super Lb/b/k/h;
.source ""


# instance fields
.field public p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public approveBeneficiary(Landroid/view/View;)V
    .locals 11

    const-string p1, "jwt"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "accesstoken"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const p1, 0x7f0a0032

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La/a/a/a/a;->Z(Landroid/content/Context;)Lc/a/b/p;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "id"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "enc_data"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/b/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "apiurl"

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/api/beneficiary/approve"

    invoke-static {p1, v0}, Lc/a/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance p1, Lcom/app/damnvulnerablebank/ApproveBeneficiary$c;

    const/4 v5, 0x1

    new-instance v8, Lcom/app/damnvulnerablebank/ApproveBeneficiary$a;

    invoke-direct {v8, p0}, Lcom/app/damnvulnerablebank/ApproveBeneficiary$a;-><init>(Lcom/app/damnvulnerablebank/ApproveBeneficiary;)V

    new-instance v9, Lcom/app/damnvulnerablebank/ApproveBeneficiary$b;

    invoke-direct {v9, p0}, Lcom/app/damnvulnerablebank/ApproveBeneficiary$b;-><init>(Lcom/app/damnvulnerablebank/ApproveBeneficiary;)V

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/app/damnvulnerablebank/ApproveBeneficiary$c;-><init>(Lcom/app/damnvulnerablebank/ApproveBeneficiary;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lc/a/b/p;->a(Lc/a/b/o;)Lc/a/b/o;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/b/k/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    const p1, 0x7f0a0031

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/ApproveBeneficiary;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/app/damnvulnerablebank/ApproveBeneficiary;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
