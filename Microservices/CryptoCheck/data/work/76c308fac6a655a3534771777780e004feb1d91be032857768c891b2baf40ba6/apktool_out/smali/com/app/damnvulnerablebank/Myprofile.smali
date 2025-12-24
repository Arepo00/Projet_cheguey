.class public Lcom/app/damnvulnerablebank/Myprofile;
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

    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lb/b/k/h;->setContentView(I)V

    const v0, 0x7f0a0198

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    const v0, 0x7f0a0199

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f0a019a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const v0, 0x7f0a019b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const-string v0, "jwt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v6, "accesstoken"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, La/a/a/a/a;->Z(Landroid/content/Context;)Lc/a/b/p;

    move-result-object v9

    const-string v0, "apiurl"

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/api/user/profile"

    invoke-static {v0, v1}, Lc/a/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/app/damnvulnerablebank/Myprofile$c;

    new-instance v7, Lcom/app/damnvulnerablebank/Myprofile$a;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/app/damnvulnerablebank/Myprofile$a;-><init>(Lcom/app/damnvulnerablebank/Myprofile;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    new-instance v11, Lcom/app/damnvulnerablebank/Myprofile$b;

    invoke-direct {v11, p0}, Lcom/app/damnvulnerablebank/Myprofile$b;-><init>(Lcom/app/damnvulnerablebank/Myprofile;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, v10

    move-object v3, v6

    move-object v5, v7

    move-object v6, v11

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/app/damnvulnerablebank/Myprofile$c;-><init>(Lcom/app/damnvulnerablebank/Myprofile;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lc/a/b/p;->a(Lc/a/b/o;)Lc/a/b/o;

    .line 1
    iget-object v0, v9, Lc/a/b/p;->e:Lc/a/b/b;

    .line 2
    check-cast v0, Lc/a/b/w/d;

    invoke-virtual {v0}, Lc/a/b/w/d;->a()V

    return-void
.end method
