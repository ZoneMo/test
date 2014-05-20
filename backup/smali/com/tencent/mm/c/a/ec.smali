.class public final Lcom/tencent/mm/c/a/ec;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bOW:Lcom/tencent/mm/c/a/ed;

.field public bOX:Lcom/tencent/mm/c/a/ee;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ec;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ec;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/mm/c/a/ed;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ed;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ec;->bOW:Lcom/tencent/mm/c/a/ed;

    .line 24
    new-instance v0, Lcom/tencent/mm/c/a/ee;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ee;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ec;->bOX:Lcom/tencent/mm/c/a/ee;

    .line 10
    const-string v0, "PublishLocation"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ec;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ec;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ec;->gbY:Z

    return-void
.end method
