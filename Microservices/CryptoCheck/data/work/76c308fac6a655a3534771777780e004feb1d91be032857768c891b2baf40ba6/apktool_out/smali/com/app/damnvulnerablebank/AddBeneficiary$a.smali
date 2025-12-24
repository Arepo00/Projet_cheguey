.class public Lcom/app/damnvulnerablebank/AddBeneficiary$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/AddBeneficiary;->addBeneficiary(Landroid/view/View;)V
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
.field public final synthetic a:Lcom/app/damnvulnerablebank/AddBeneficiary;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/AddBeneficiary;)V
    .locals 0

    iput-object p1, p0, Lcom/app/damnvulnerablebank/AddBeneficiary$a;->a:Lcom/app/damnvulnerablebank/AddBeneficiary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/app/damnvulnerablebank/AddBeneficiary$a;->a:Lcom/app/damnvulnerablebank/AddBeneficiary;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "enc_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/b/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/app/damnvulnerablebank/AddBeneficiary$a;->a:Lcom/app/damnvulnerablebank/AddBeneficiary;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/app/damnvulnerablebank/AddBeneficiary$a;->a:Lcom/app/damnvulnerablebank/AddBeneficiary;

    const-class v2, Lcom/app/damnvulnerablebank/Dashboard;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
