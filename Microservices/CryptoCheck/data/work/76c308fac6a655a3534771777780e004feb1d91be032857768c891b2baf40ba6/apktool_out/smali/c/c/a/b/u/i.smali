.class public Lc/c/a/b/u/i;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source ""


# instance fields
.field public final synthetic a:Lc/c/a/b/u/r;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lc/c/a/b/u/f;


# direct methods
.method public constructor <init>(Lc/c/a/b/u/f;Lc/c/a/b/u/r;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/u/i;->c:Lc/c/a/b/u/f;

    iput-object p2, p0, Lc/c/a/b/u/i;->a:Lc/c/a/b/u/r;

    iput-object p3, p0, Lc/c/a/b/u/i;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lc/c/a/b/u/i;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lc/c/a/b/u/i;->c:Lc/c/a/b/u/f;

    invoke-virtual {p1}, Lc/c/a/b/u/f;->a0()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    if-gez p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i1()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lc/c/a/b/u/i;->c:Lc/c/a/b/u/f;

    iget-object p3, p0, Lc/c/a/b/u/i;->a:Lc/c/a/b/u/r;

    invoke-virtual {p3, p1}, Lc/c/a/b/u/r;->e(I)Lc/c/a/b/u/o;

    move-result-object p3

    .line 1
    iput-object p3, p2, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    .line 2
    iget-object p2, p0, Lc/c/a/b/u/i;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lc/c/a/b/u/i;->a:Lc/c/a/b/u/r;

    .line 3
    iget-object p3, p3, Lc/c/a/b/u/r;->c:Lc/c/a/b/u/a;

    .line 4
    iget-object p3, p3, Lc/c/a/b/u/a;->b:Lc/c/a/b/u/o;

    .line 5
    invoke-virtual {p3, p1}, Lc/c/a/b/u/o;->h(I)Lc/c/a/b/u/o;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lc/c/a/b/u/o;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
