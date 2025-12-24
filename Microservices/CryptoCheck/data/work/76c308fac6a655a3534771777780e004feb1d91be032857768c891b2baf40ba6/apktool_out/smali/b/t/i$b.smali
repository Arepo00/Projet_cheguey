.class public Lb/t/i$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/t/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Lb/t/q;

.field public d:Lb/t/f0;

.field public e:Lb/t/i;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lb/t/i;Lb/t/f0;Lb/t/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/t/i$b;->a:Landroid/view/View;

    iput-object p2, p0, Lb/t/i$b;->b:Ljava/lang/String;

    iput-object p5, p0, Lb/t/i$b;->c:Lb/t/q;

    iput-object p4, p0, Lb/t/i$b;->d:Lb/t/f0;

    iput-object p3, p0, Lb/t/i$b;->e:Lb/t/i;

    return-void
.end method
