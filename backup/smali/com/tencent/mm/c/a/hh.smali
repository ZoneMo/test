.class public final Lcom/tencent/mm/c/a/hh;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRe:Lcom/tencent/mm/c/a/hi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/hh;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/hh;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/hi;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hi;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/hh;->bRe:Lcom/tencent/mm/c/a/hi;

    .line 8
    const-string v0, "TrackRemoveTip"

    iput-object v0, p0, Lcom/tencent/mm/c/a/hh;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/hh;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/hh;->gbY:Z

    return-void
.end method
