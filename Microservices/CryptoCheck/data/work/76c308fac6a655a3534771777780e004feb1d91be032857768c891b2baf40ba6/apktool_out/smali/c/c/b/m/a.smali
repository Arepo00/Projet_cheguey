.class public Lc/c/b/m/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/m/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lc/c/b/m/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lc/c/b/m/a;

    iget-object v0, p0, Lc/c/b/m/a;->a:Ljava/lang/String;

    iget-object p1, p1, Lc/c/b/m/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/c/b/m/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, La/a/a/a/a;->B0(Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/m/a;->a:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    invoke-virtual {v0}, Lc/c/a/a/c/l/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
