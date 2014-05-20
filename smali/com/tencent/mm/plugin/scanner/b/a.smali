.class public abstract Lcom/tencent/mm/plugin/scanner/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static efN:I


# instance fields
.field protected efJ:Lcom/tencent/mm/plugin/scanner/b/d;

.field protected efK:[B

.field protected efL:[B

.field public efM:Ljava/lang/String;

.field public efO:[Z

.field protected efP:Lcom/tencent/mm/sdk/platformtools/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/plugin/scanner/b/a;->efN:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/b/d;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/a;->efJ:Lcom/tencent/mm/plugin/scanner/b/d;

    .line 23
    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/a;->efK:[B

    .line 24
    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/a;->efL:[B

    .line 28
    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/a;->efO:[Z

    .line 30
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/an;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/an;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/b/a;->efP:Lcom/tencent/mm/sdk/platformtools/an;

    .line 33
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/b/a;->efJ:Lcom/tencent/mm/plugin/scanner/b/d;

    .line 34
    return-void
.end method


# virtual methods
.method public final a([BLandroid/graphics/Point;Landroid/graphics/Rect;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v7, p0, Lcom/tencent/mm/plugin/scanner/b/a;->efP:Lcom/tencent/mm/sdk/platformtools/an;

    new-instance v0, Lcom/tencent/mm/plugin/scanner/b/b;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/scanner/b/b;-><init>(Lcom/tencent/mm/plugin/scanner/b/a;Landroid/graphics/Point;Landroid/graphics/Rect;[BJ)V

    invoke-virtual {v7, v0}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    .line 61
    return-void
.end method

.method public abstract aaF()V
.end method

.method public abstract aaG()V
.end method

.method public abstract b([BLandroid/graphics/Point;Landroid/graphics/Rect;J)Z
.end method
