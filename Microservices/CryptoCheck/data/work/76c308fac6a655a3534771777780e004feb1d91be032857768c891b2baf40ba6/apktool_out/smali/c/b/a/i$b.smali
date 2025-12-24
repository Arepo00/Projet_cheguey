.class public Lc/b/a/i$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public final synthetic w:Lc/b/a/i;


# direct methods
.method public constructor <init>(Lc/b/a/i;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lc/b/a/i$b;->w:Lc/b/a/i;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0030

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/a/i$b;->t:Landroid/widget/TextView;

    const v0, 0x7f0a005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/a/i$b;->u:Landroid/widget/TextView;

    const v0, 0x7f0a00c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/a/i$b;->v:Landroid/widget/TextView;

    new-instance v0, Lc/b/a/i$b$a;

    invoke-direct {v0, p0, p1}, Lc/b/a/i$b$a;-><init>(Lc/b/a/i$b;Lc/b/a/i;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
