.class public final synthetic Lc/c/b/i/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/l/a;


# instance fields
.field public final a:Lc/c/b/i/l;

.field public final b:Lc/c/b/i/d;


# direct methods
.method public constructor <init>(Lc/c/b/i/l;Lc/c/b/i/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/i/i;->a:Lc/c/b/i/l;

    iput-object p2, p0, Lc/c/b/i/i;->b:Lc/c/b/i/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/c/b/i/i;->a:Lc/c/b/i/l;

    iget-object v1, p0, Lc/c/b/i/i;->b:Lc/c/b/i/d;

    invoke-static {v0, v1}, Lc/c/b/i/l;->e(Lc/c/b/i/l;Lc/c/b/i/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
