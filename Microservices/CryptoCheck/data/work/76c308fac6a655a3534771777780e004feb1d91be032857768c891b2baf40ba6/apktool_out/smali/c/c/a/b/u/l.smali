.class public Lc/c/a/b/u/l;
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

    iput-object p1, p0, Lc/c/a/b/u/l;->c:Lc/c/a/b/u/f;

    iput-object p2, p0, Lc/c/a/b/u/l;->b:Lc/c/a/b/u/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/c/a/b/u/l;->c:Lc/c/a/b/u/f;

    invoke-virtual {p1}, Lc/c/a/b/u/f;->a0()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lc/c/a/b/u/l;->c:Lc/c/a/b/u/f;

    iget-object v1, p0, Lc/c/a/b/u/l;->b:Lc/c/a/b/u/r;

    invoke-virtual {v1, p1}, Lc/c/a/b/u/r;->e(I)Lc/c/a/b/u/o;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/b/u/f;->c0(Lc/c/a/b/u/o;)V

    :cond_0
    return-void
.end method
