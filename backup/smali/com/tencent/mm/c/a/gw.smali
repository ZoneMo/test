.class public final Lcom/tencent/mm/c/a/gw;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQQ:Lcom/tencent/mm/c/a/gx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/gw;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/gw;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/gx;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gx;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gw;->bQQ:Lcom/tencent/mm/c/a/gx;

    .line 8
    const-string v0, "TalkRoomReportMgr"

    iput-object v0, p0, Lcom/tencent/mm/c/a/gw;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/gw;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/gw;->gbY:Z

    return-void
.end method
