.class public Lb/i/j/b$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lb/i/j/b$f;


# direct methods
.method public constructor <init>(I[Lb/i/j/b$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/i/j/b$e;->a:I

    iput-object p2, p0, Lb/i/j/b$e;->b:[Lb/i/j/b$f;

    return-void
.end method
