.class public Lc/c/b/h/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lc/c/a/a/f/c/r;

    invoke-direct {v0}, Lc/c/a/a/f/c/r;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "recoverEmail"

    invoke-virtual {v0, v3, v2}, Lc/c/a/a/f/c/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Lc/c/a/a/f/c/r;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "resetPassword"

    invoke-virtual {v0, v4, v3}, Lc/c/a/a/f/c/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Lc/c/a/a/f/c/r;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "signIn"

    invoke-virtual {v0, v4, v3}, Lc/c/a/a/f/c/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Lc/c/a/a/f/c/r;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "verifyEmail"

    invoke-virtual {v0, v5, v4}, Lc/c/a/a/f/c/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Lc/c/a/a/f/c/r;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "verifyBeforeChangeEmail"

    invoke-virtual {v0, v5, v4}, Lc/c/a/a/f/c/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Lc/c/a/a/f/c/r;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "revertSecondFactorAddition"

    invoke-virtual {v0, v5, v4}, Lc/c/a/a/f/c/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Lc/c/a/a/f/c/r;

    .line 1
    iget v4, v0, Lc/c/a/a/f/c/r;->b:I

    iget-object v0, v0, Lc/c/a/a/f/c/r;->a:[Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 2
    sget-object v0, Lc/c/a/a/f/c/s;->h:Lc/c/a/a/f/c/o;

    check-cast v0, Lc/c/a/a/f/c/s;

    goto/16 :goto_9

    :cond_0
    if-ne v4, v3, :cond_1

    aget-object v1, v0, v2

    aget-object v0, v0, v3

    goto :goto_2

    :cond_1
    array-length v5, v0

    shr-int/2addr v5, v3

    invoke-static {v4, v5}, Lc/c/a/a/c/l/q;->A0(II)I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v5, 0x2ccccccc

    const/high16 v6, 0x40000000    # 2.0f

    if-ge v1, v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    shl-int/2addr v5, v3

    move v6, v5

    :goto_0
    int-to-double v7, v6

    const-wide v9, 0x3fe6666666666666L    # 0.7

    mul-double v7, v7, v9

    int-to-double v9, v1

    cmpg-double v5, v7, v9

    if-gez v5, :cond_4

    shl-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v6, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_f

    :cond_4
    if-ne v4, v3, :cond_5

    aget-object v1, v0, v2

    aget-object v0, v0, v3

    :goto_2
    invoke-static {v1, v0}, Lc/c/a/a/c/l/q;->x0(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_5
    add-int/lit8 v1, v6, -0x1

    const/16 v3, 0x80

    const/4 v5, -0x1

    if-gt v6, v3, :cond_8

    new-array v3, v6, [B

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    :goto_3
    if-ge v2, v4, :cond_e

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, v0, v5

    xor-int/lit8 v7, v5, 0x1

    aget-object v7, v0, v7

    invoke-static {v6, v7}, Lc/c/a/a/c/l/q;->x0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lc/c/a/a/c/l/q;->l0(I)I

    move-result v8

    :goto_4
    and-int/2addr v8, v1

    aget-byte v9, v3, v8

    const/16 v10, 0xff

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_6

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    aget-object v10, v0, v9

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v6, v7, v0, v9}, Lc/c/a/a/f/c/s;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_8
    const v3, 0x8000

    if-gt v6, v3, :cond_b

    new-array v3, v6, [S

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([SS)V

    :goto_5
    if-ge v2, v4, :cond_e

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, v0, v5

    xor-int/lit8 v7, v5, 0x1

    aget-object v7, v0, v7

    invoke-static {v6, v7}, Lc/c/a/a/c/l/q;->x0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lc/c/a/a/c/l/q;->l0(I)I

    move-result v8

    :goto_6
    and-int/2addr v8, v1

    aget-short v9, v3, v8

    const v10, 0xffff

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_9

    int-to-short v5, v5

    aput-short v5, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    aget-object v10, v0, v9

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    invoke-static {v6, v7, v0, v9}, Lc/c/a/a/f/c/s;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_b
    new-array v3, v6, [I

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([II)V

    :goto_7
    if-ge v2, v4, :cond_e

    mul-int/lit8 v6, v2, 0x2

    aget-object v7, v0, v6

    xor-int/lit8 v8, v6, 0x1

    aget-object v8, v0, v8

    invoke-static {v7, v8}, Lc/c/a/a/c/l/q;->x0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lc/c/a/a/c/l/q;->l0(I)I

    move-result v9

    :goto_8
    and-int/2addr v9, v1

    aget v10, v3, v9

    if-ne v10, v5, :cond_c

    aput v6, v3, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    aget-object v11, v0, v10

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    invoke-static {v7, v8, v0, v10}, Lc/c/a/a/f/c/s;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_9
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lc/c/b/h/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/c/b/h/a;->a:Ljava/lang/String;

    const-string v1, "oobCode"

    invoke-static {p1, v1}, Lc/c/b/h/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/c/b/h/a;->b:Ljava/lang/String;

    const-string v2, "mode"

    invoke-static {p1, v2}, Lc/c/b/h/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc/c/b/h/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lc/c/b/h/a;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc/c/b/h/a;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const-string v0, "continueUrl"

    invoke-static {p1, v0}, Lc/c/b/h/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Lc/c/b/h/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "tenantId"

    invoke-static {p1, v0}, Lc/c/b/h/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/b/h/a;->d:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s, %s and %s are required in a valid action code URL"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lc/c/b/h/a;
    .locals 1

    invoke-static {p0}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    new-instance v0, Lc/c/b/h/a;

    invoke-direct {v0, p0}, Lc/c/b/h/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "link"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
