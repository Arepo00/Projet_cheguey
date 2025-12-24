.class public Lc/c/a/b/u/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lc/c/a/b/u/f;


# direct methods
.method public constructor <init>(Lc/c/a/b/u/f;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/u/j;->b:Lc/c/a/b/u/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/c/a/b/u/j;->b:Lc/c/a/b/u/f;

    .line 1
    sget-object v0, Lc/c/a/b/u/f$e;->b:Lc/c/a/b/u/f$e;

    sget-object v1, Lc/c/a/b/u/f$e;->c:Lc/c/a/b/u/f$e;

    iget-object v2, p1, Lc/c/a/b/u/f;->b0:Lc/c/a/b/u/f$e;

    if-ne v2, v1, :cond_0

    invoke-virtual {p1, v0}, Lc/c/a/b/u/f;->d0(Lc/c/a/b/u/f$e;)V

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    invoke-virtual {p1, v1}, Lc/c/a/b/u/f;->d0(Lc/c/a/b/u/f$e;)V

    :cond_1
    :goto_0
    return-void
.end method
