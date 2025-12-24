.class public Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;
.super Lb/b/k/h;
.source ""

# interfaces
.implements Lc/b/a/b$a;


# instance fields
.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroid/widget/TextView;

.field public s:Lc/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/app/damnvulnerablebank/SendMoney;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c;

    .line 1
    iget-object p1, p1, Lc/b/a/c;->a:Ljava/lang/String;

    const-string v1, "beneficiary_account_number"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lb/b/k/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002a

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    const p1, 0x7f0a005f

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;->p:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0a00a1

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;->r:Landroid/widget/TextView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;->q:Ljava/util/List;

    const-string p1, "apiurl"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/api/beneficiary/view"

    invoke-static {p1, v0}, Lc/a/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, La/a/a/a/a;->Z(Landroid/content/Context;)Lc/a/b/p;

    move-result-object p1

    new-instance v0, Lc/b/a/w;

    new-instance v6, Lc/b/a/u;

    invoke-direct {v6, p0}, Lc/b/a/u;-><init>(Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;)V

    new-instance v7, Lc/b/a/v;

    invoke-direct {v7, p0}, Lc/b/a/v;-><init>(Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lc/b/a/w;-><init>(Lcom/app/damnvulnerablebank/ViewBeneficiaryAdmin;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;)V

    invoke-virtual {p1, v0}, Lc/a/b/p;->a(Lc/a/b/o;)Lc/a/b/o;

    .line 2
    iget-object p1, p1, Lc/a/b/p;->e:Lc/a/b/b;

    .line 3
    check-cast p1, Lc/a/b/w/d;

    invoke-virtual {p1}, Lc/a/b/w/d;->a()V

    return-void
.end method
