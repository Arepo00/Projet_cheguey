.class public Lc/c/a/a/c/l/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public b:Lc/c/a/a/c/e;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/l/j;->a:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/a/a/c/l/j;->b:Lc/c/a/a/c/e;

    return-void
.end method
