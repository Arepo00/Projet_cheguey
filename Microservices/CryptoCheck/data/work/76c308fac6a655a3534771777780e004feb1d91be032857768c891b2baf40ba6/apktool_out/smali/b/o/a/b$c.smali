.class public Lb/o/a/b$c;
.super Lb/n/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/o/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final c:Lb/n/q;


# instance fields
.field public b:Lb/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/i<",
            "Lb/o/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/o/a/b$c$a;

    invoke-direct {v0}, Lb/o/a/b$c$a;-><init>()V

    sput-object v0, Lb/o/a/b$c;->c:Lb/n/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/n/p;-><init>()V

    new-instance v0, Lb/f/i;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lb/f/i;-><init>(I)V

    .line 2
    iput-object v0, p0, Lb/o/a/b$c;->b:Lb/f/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lb/o/a/b$c;->b:Lb/f/i;

    invoke-virtual {v0}, Lb/f/i;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/o/a/b$c;->b:Lb/f/i;

    invoke-virtual {v0, v2}, Lb/f/i;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/a/b$a;

    .line 1
    throw v1

    .line 2
    :cond_0
    iget-object v0, p0, Lb/o/a/b$c;->b:Lb/f/i;

    .line 3
    iget v3, v0, Lb/f/i;->e:I

    iget-object v4, v0, Lb/f/i;->d:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aput-object v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v2, v0, Lb/f/i;->e:I

    iput-boolean v2, v0, Lb/f/i;->b:Z

    return-void
.end method
