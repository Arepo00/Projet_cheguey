.class public Lc/b/a/b$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/b$b;-><init>(Lc/b/a/b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/b/a/b$b;


# direct methods
.method public constructor <init>(Lc/b/a/b$b;Lc/b/a/b;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b$b$a;->b:Lc/b/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/a/b$b$a;->b:Lc/b/a/b$b;

    iget-object v0, p1, Lc/b/a/b$b;->v:Lc/b/a/b;

    .line 1
    iget-object v0, v0, Lc/b/a/b;->e:Lc/b/a/b$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->e()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lc/b/a/b$b$a;->b:Lc/b/a/b$b;

    iget-object v0, v0, Lc/b/a/b$b;->v:Lc/b/a/b;

    .line 3
    iget-object v0, v0, Lc/b/a/b;->e:Lc/b/a/b$a;

    .line 4
    invoke-interface {v0, p1}, Lc/b/a/b$a;->c(I)V

    :cond_0
    return-void
.end method
