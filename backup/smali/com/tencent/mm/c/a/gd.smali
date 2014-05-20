.class public final Lcom/tencent/mm/c/a/gd;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQA:Lcom/tencent/mm/c/a/gf;

.field public bQz:Lcom/tencent/mm/c/a/ge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/gd;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/gd;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ge;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ge;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gd;->bQz:Lcom/tencent/mm/c/a/ge;

    .line 19
    new-instance v0, Lcom/tencent/mm/c/a/gf;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gf;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gd;->bQA:Lcom/tencent/mm/c/a/gf;

    .line 8
    const-string v0, "SnsfillEventInfo"

    iput-object v0, p0, Lcom/tencent/mm/c/a/gd;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/gd;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/gd;->gbY:Z

    return-void
.end method
