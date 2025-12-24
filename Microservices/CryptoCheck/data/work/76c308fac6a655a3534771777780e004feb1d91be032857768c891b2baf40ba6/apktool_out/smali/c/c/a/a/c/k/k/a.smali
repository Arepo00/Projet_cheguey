.class public final Lc/c/a/a/c/k/k/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/c/a/a/c/k/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Lc/c/a/a/c/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final d:Lc/c/a/a/c/k/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/a;Lc/c/a/a/c/k/a$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/a<",
            "TO;>;TO;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a/c/k/k/a;->a:Z

    iput-object p1, p0, Lc/c/a/a/c/k/k/a;->c:Lc/c/a/a/c/k/a;

    iput-object p2, p0, Lc/c/a/a/c/k/k/a;->d:Lc/c/a/a/c/k/a$d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 1
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    .line 2
    iput p1, p0, Lc/c/a/a/c/k/k/a;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/c/a/a/c/k/k/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/c/a/a/c/k/k/a;

    iget-boolean v1, p0, Lc/c/a/a/c/k/k/a;->a:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lc/c/a/a/c/k/k/a;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/c/k/k/a;->c:Lc/c/a/a/c/k/a;

    iget-object v3, p1, Lc/c/a/a/c/k/k/a;->c:Lc/c/a/a/c/k/a;

    invoke-static {v1, v3}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/c/k/k/a;->d:Lc/c/a/a/c/k/a$d;

    iget-object p1, p1, Lc/c/a/a/c/k/k/a;->d:Lc/c/a/a/c/k/a$d;

    invoke-static {v1, p1}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lc/c/a/a/c/k/k/a;->b:I

    return v0
.end method
