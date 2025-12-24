.class public final enum Lb/g/b/i/d$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/b/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/g/b/i/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/g/b/i/d$a;

.field public static final enum c:Lb/g/b/i/d$a;

.field public static final enum d:Lb/g/b/i/d$a;

.field public static final enum e:Lb/g/b/i/d$a;

.field public static final synthetic f:[Lb/g/b/i/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lb/g/b/i/d$a;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/g/b/i/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    new-instance v0, Lb/g/b/i/d$a;

    const-string v1, "WRAP_CONTENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/g/b/i/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/b/i/d$a;->c:Lb/g/b/i/d$a;

    new-instance v0, Lb/g/b/i/d$a;

    const-string v1, "MATCH_CONSTRAINT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/g/b/i/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    new-instance v0, Lb/g/b/i/d$a;

    const-string v1, "MATCH_PARENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lb/g/b/i/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/b/i/d$a;->e:Lb/g/b/i/d$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lb/g/b/i/d$a;

    sget-object v6, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    aput-object v6, v1, v2

    sget-object v2, Lb/g/b/i/d$a;->c:Lb/g/b/i/d$a;

    aput-object v2, v1, v3

    sget-object v2, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lb/g/b/i/d$a;->f:[Lb/g/b/i/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/g/b/i/d$a;
    .locals 1

    const-class v0, Lb/g/b/i/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/g/b/i/d$a;

    return-object p0
.end method

.method public static values()[Lb/g/b/i/d$a;
    .locals 1

    sget-object v0, Lb/g/b/i/d$a;->f:[Lb/g/b/i/d$a;

    invoke-virtual {v0}, [Lb/g/b/i/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/b/i/d$a;

    return-object v0
.end method
