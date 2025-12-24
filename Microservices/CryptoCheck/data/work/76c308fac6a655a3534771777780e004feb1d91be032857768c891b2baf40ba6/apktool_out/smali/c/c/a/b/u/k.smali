.class public Lc/c/a/b/u/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lc/c/a/b/u/r;

.field public final synthetic c:Lc/c/a/b/u/f;


# direct methods
.method public constructor <init>(Lc/c/a/b/u/f;Lc/c/a/b/u/r;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/u/k;->c:Lc/c/a/b/u/f;

    iput-object p2, p0, Lc/c/a/b/u/k;->b:Lc/c/a/b/u/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/c/a/b/u/k;->c:Lc/c/a/b/u/f;

    invoke-virtual {p1}, Lc/c/a/b/u/f;->a0()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i1()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lc/c/a/b/u/k;->c:Lc/c/a/b/u/f;

    .line 1
    iget-object v0, v0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lc/c/a/b/u/k;->c:Lc/c/a/b/u/f;

    iget-object v1, p0, Lc/c/a/b/u/k;->b:Lc/c/a/b/u/r;

    invoke-virtual {v1, p1}, Lc/c/a/b/u/r;->e(I)Lc/c/a/b/u/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/b/u/f;->c0(Lc/c/a/b/u/o;)V

    :cond_0
    return-void
.end method
