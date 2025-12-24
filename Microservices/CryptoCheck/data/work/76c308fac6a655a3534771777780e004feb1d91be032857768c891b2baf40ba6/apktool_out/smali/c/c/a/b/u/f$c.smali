.class public Lc/c/a/b/u/f$c;
.super Lc/c/a/b/u/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/u/f;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic H:I

.field public final synthetic I:Lc/c/a/b/u/f;


# direct methods
.method public constructor <init>(Lc/c/a/b/u/f;Landroid/content/Context;IZI)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/u/f$c;->I:Lc/c/a/b/u/f;

    iput p5, p0, Lc/c/a/b/u/f$c;->H:I

    invoke-direct {p0, p2, p3, p4}, Lc/c/a/b/u/u;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public X0(Landroidx/recyclerview/widget/RecyclerView$a0;[I)V
    .locals 2

    iget p1, p0, Lc/c/a/b/u/f$c;->H:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/c/a/b/u/f$c;->I:Lc/c/a/b/u/f;

    .line 1
    iget-object p1, p1, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Lc/c/a/b/u/f$c;->I:Lc/c/a/b/u/f;

    .line 3
    iget-object p1, p1, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/c/a/b/u/f$c;->I:Lc/c/a/b/u/f;

    .line 5
    iget-object p1, p1, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Lc/c/a/b/u/f$c;->I:Lc/c/a/b/u/f;

    .line 7
    iget-object p1, p1, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v0

    :goto_0
    return-void
.end method
