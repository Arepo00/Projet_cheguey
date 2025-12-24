.class public Lcom/app/damnvulnerablebank/GetTransactions;
.super Lb/b/k/h;
.source ""


# instance fields
.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/q;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroid/widget/TextView;

.field public s:Lc/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lb/b/k/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0029

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    const p1, 0x7f0a01b1

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/GetTransactions;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/app/damnvulnerablebank/GetTransactions;->q:Ljava/util/List;

    const p1, 0x7f0a00a1

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/GetTransactions;->r:Landroid/widget/TextView;

    const-string p1, "apiurl"

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/api/transactions/view"

    invoke-static {p1, v0}, Lc/a/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, La/a/a/a/a;->Z(Landroid/content/Context;)Lc/a/b/p;

    move-result-object p1

    new-instance v0, Lc/b/a/h;

    new-instance v6, Lc/b/a/f;

    invoke-direct {v6, p0}, Lc/b/a/f;-><init>(Lcom/app/damnvulnerablebank/GetTransactions;)V

    new-instance v7, Lc/b/a/g;

    invoke-direct {v7, p0}, Lc/b/a/g;-><init>(Lcom/app/damnvulnerablebank/GetTransactions;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lc/b/a/h;-><init>(Lcom/app/damnvulnerablebank/GetTransactions;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/q$b;Lc/a/b/q$a;)V

    invoke-virtual {p1, v0}, Lc/a/b/p;->a(Lc/a/b/o;)Lc/a/b/o;

    .line 2
    iget-object p1, p1, Lc/a/b/p;->e:Lc/a/b/b;

    .line 3
    check-cast p1, Lc/a/b/w/d;

    invoke-virtual {p1}, Lc/a/b/w/d;->a()V

    return-void
.end method
