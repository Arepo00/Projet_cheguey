.class public final Lc/c/a/a/f/c/w;
.super Lc/c/a/a/f/c/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/f/c/n<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/f/c/n;-><init>()V

    iput-object p1, p0, Lc/c/a/a/f/c/w;->d:[Ljava/lang/Object;

    iput p2, p0, Lc/c/a/a/f/c/w;->e:I

    iput p3, p0, Lc/c/a/a/f/c/w;->f:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lc/c/a/a/f/c/w;->f:I

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->m0(II)I

    iget-object v0, p0, Lc/c/a/a/f/c/w;->d:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lc/c/a/a/f/c/w;->e:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lc/c/a/a/f/c/w;->f:I

    return v0
.end method
