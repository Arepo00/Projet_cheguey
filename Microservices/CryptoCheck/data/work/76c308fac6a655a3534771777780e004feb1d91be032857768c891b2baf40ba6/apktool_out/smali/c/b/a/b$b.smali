.class public Lc/b/a/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public final synthetic v:Lc/b/a/b;


# direct methods
.method public constructor <init>(Lc/b/a/b;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lc/b/a/b$b;->v:Lc/b/a/b;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a005f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/a/b$b;->t:Landroid/widget/TextView;

    const v0, 0x7f0a00cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/a/b$b;->u:Landroid/widget/TextView;

    new-instance v0, Lc/b/a/b$b$a;

    invoke-direct {v0, p0, p1}, Lc/b/a/b$b$a;-><init>(Lc/b/a/b$b;Lc/b/a/b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
