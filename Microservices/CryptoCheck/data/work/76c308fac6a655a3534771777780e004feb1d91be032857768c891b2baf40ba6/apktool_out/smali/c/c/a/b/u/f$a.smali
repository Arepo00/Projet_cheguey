.class public Lc/c/a/b/u/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/u/f;->b0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lc/c/a/b/u/f;


# direct methods
.method public constructor <init>(Lc/c/a/b/u/f;I)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/u/f$a;->c:Lc/c/a/b/u/f;

    iput p2, p0, Lc/c/a/b/u/f$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/c/a/b/u/f$a;->c:Lc/c/a/b/u/f;

    .line 1
    iget-object v0, v0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iget v1, p0, Lc/c/a/b/u/f$a;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
