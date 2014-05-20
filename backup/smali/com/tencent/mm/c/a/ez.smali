.class public final Lcom/tencent/mm/c/a/ez;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bPL:Lcom/tencent/mm/c/a/fa;

.field public bPM:Lcom/tencent/mm/c/a/fb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ez;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ez;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/fa;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fa;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ez;->bPL:Lcom/tencent/mm/c/a/fa;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/fb;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fb;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ez;->bPM:Lcom/tencent/mm/c/a/fb;

    .line 8
    const-string v0, "RecentlySnsMediaObj"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ez;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ez;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ez;->gbY:Z

    return-void
.end method
