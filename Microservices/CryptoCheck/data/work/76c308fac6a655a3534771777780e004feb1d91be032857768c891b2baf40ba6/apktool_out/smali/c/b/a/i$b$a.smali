.class public Lc/b/a/i$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/i$b;-><init>(Lc/b/a/i;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/b/a/i$b;


# direct methods
.method public constructor <init>(Lc/b/a/i$b;Lc/b/a/i;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/i$b$a;->b:Lc/b/a/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/b/a/i$b$a;->b:Lc/b/a/i$b;

    iget-object v0, p1, Lc/b/a/i$b;->w:Lc/b/a/i;

    .line 1
    iget-object v0, v0, Lc/b/a/i;->e:Lc/b/a/i$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->e()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lc/b/a/i$b$a;->b:Lc/b/a/i$b;

    iget-object v0, v0, Lc/b/a/i$b;->w:Lc/b/a/i;

    .line 3
    iget-object v0, v0, Lc/b/a/i;->e:Lc/b/a/i$a;

    .line 4
    check-cast v0, Lcom/app/damnvulnerablebank/PendingBeneficiary;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/app/damnvulnerablebank/ApproveBeneficiary;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v0, Lcom/app/damnvulnerablebank/PendingBeneficiary;->q:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/m;

    .line 6
    iget-object p1, p1, Lc/b/a/m;->c:Ljava/lang/String;

    const-string v2, "id"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
