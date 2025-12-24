.class public final Lc/c/a/a/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/a$d;


# static fields
.field public static final k:Lc/c/a/a/g/a;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/lang/Long;

.field public final j:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/g/a;

    invoke-direct {v0}, Lc/c/a/a/g/a;-><init>()V

    sput-object v0, Lc/c/a/a/g/a;->k:Lc/c/a/a/g/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a/g/a;->b:Z

    iput-boolean v0, p0, Lc/c/a/a/g/a;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lc/c/a/a/g/a;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lc/c/a/a/g/a;->e:Z

    iput-boolean v0, p0, Lc/c/a/a/g/a;->h:Z

    iput-object v1, p0, Lc/c/a/a/g/a;->f:Ljava/lang/String;

    iput-object v1, p0, Lc/c/a/a/g/a;->g:Ljava/lang/String;

    iput-object v1, p0, Lc/c/a/a/g/a;->i:Ljava/lang/Long;

    iput-object v1, p0, Lc/c/a/a/g/a;->j:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/c/a/a/g/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/c/a/a/g/a;

    iget-boolean v1, p0, Lc/c/a/a/g/a;->b:Z

    iget-boolean v3, p1, Lc/c/a/a/g/a;->b:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lc/c/a/a/g/a;->c:Z

    iget-boolean v3, p1, Lc/c/a/a/g/a;->c:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lc/c/a/a/g/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/a/g/a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/c/a/a/g/a;->e:Z

    iget-boolean v3, p1, Lc/c/a/a/g/a;->e:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lc/c/a/a/g/a;->h:Z

    iget-boolean v3, p1, Lc/c/a/a/g/a;->h:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lc/c/a/a/g/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/a/g/a;->f:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/g/a;->g:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/a/g/a;->g:Ljava/lang/String;

    invoke-static {v1, v3}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/g/a;->i:Ljava/lang/Long;

    iget-object v3, p1, Lc/c/a/a/g/a;->i:Ljava/lang/Long;

    invoke-static {v1, v3}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/g/a;->j:Ljava/lang/Long;

    iget-object p1, p1, Lc/c/a/a/g/a;->j:Ljava/lang/Long;

    invoke-static {v1, p1}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lc/c/a/a/g/a;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lc/c/a/a/g/a;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/c/a/a/g/a;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lc/c/a/a/g/a;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lc/c/a/a/g/a;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/c/a/a/g/a;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/c/a/a/g/a;->g:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/c/a/a/g/a;->i:Ljava/lang/Long;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/c/a/a/g/a;->j:Ljava/lang/Long;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
