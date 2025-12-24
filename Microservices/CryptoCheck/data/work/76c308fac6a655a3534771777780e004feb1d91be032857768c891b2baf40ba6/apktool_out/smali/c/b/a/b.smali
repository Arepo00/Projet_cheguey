.class public Lc/b/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/b$b;,
        Lc/b/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lc/b/a/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Landroid/view/LayoutInflater;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc/b/a/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lc/b/a/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/b;->c:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lc/b/a/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lc/b/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 2

    check-cast p1, Lc/b/a/b$b;

    .line 1
    iget-object v0, p1, Lc/b/a/b$b;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lc/b/a/b;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/c;

    .line 2
    iget-object v1, v1, Lc/b/a/c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lc/b/a/b$b;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lc/b/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/a/c;

    .line 4
    iget-object p2, p2, Lc/b/a/c;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    .line 1
    iget-object p2, p0, Lc/b/a/b;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0d002b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lc/b/a/b$b;

    invoke-direct {p2, p0, p1}, Lc/b/a/b$b;-><init>(Lc/b/a/b;Landroid/view/View;)V

    return-object p2
.end method
