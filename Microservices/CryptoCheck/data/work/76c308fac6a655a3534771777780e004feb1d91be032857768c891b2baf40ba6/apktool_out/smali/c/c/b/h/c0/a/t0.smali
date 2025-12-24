.class public final Lc/c/b/h/c0/a/t0;
.super Lc/c/b/h/c0/a/b;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/a$d;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/c/b/h/c0/a/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/b/h/c0/a/b;-><init>()V

    const-string p2, "A valid API key must be provided"

    invoke-static {p1, p2}, Lc/c/a/a/c/l/q;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lc/c/b/h/c0/a/t0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/c/b/h/c0/a/t0;->c:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    new-instance v1, Lc/c/b/h/c0/a/t0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc/c/b/h/c0/a/t0;-><init>(Ljava/lang/String;Lc/c/b/h/c0/a/r0;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/c/b/h/c0/a/t0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/c/b/h/c0/a/t0;

    iget-object v1, p0, Lc/c/b/h/c0/a/t0;->c:Ljava/lang/String;

    iget-object v3, p1, Lc/c/b/h/c0/a/t0;->c:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/c/b/h/c0/a/b;->b:Z

    iget-boolean p1, p1, Lc/c/b/h/c0/a/b;->b:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lc/c/b/h/c0/a/t0;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    .line 2
    iget-boolean v2, p0, Lc/c/b/h/c0/a/b;->b:Z

    xor-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method
