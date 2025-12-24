.class public Lcom/app/damnvulnerablebank/ViewBalance;
.super Lb/b/k/h;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lb/b/k/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    const p1, 0x7f0a0197

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "jwt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "accesstoken"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0}, La/a/a/a/a;->Z(Landroid/content/Context;)Lc/a/b/p;

    move-result-object v0

    const-string v2, "apiurl"

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/api/balance/view"

    invoke-static {v1, v2}, Lc/a/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/app/damnvulnerablebank/ViewBalance$c;

    new-instance v9, Lcom/app/damnvulnerablebank/ViewBalance$a;

    invoke-direct {v9, p0, p1}, Lcom/app/damnvulnerablebank/ViewBalance$a;-><init>(Lcom/app/damnvulnerablebank/ViewBalance;Landroid/widget/TextView;)V

    new-instance v10, Lcom/app/damnvulnerablebank/ViewBalance$b;

    invoke-direct {v10, p0}, Lcom/app/damnvulnerablebank/ViewBalance$b;-><init>(Lcom/app/damnvulnerablebank/ViewBalance;)V

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/app/damnvulnerablebank/ViewBalance$c;-><init>(Lcom/app/damnvulnerablebank/ViewBalance;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/a/b/p;->a(Lc/a/b/o;)Lc/a/b/o;

    .line 1
    iget-object p1, v0, Lc/a/b/p;->e:Lc/a/b/b;

    .line 2
    check-cast p1, Lc/a/b/w/d;

    invoke-virtual {p1}, Lc/a/b/w/d;->a()V

    return-void
.end method
