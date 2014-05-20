.class public final Lcom/tencent/mm/compatible/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cdI:I

.field public cdJ:I

.field public cdK:I

.field public cdL:I

.field final synthetic cdM:Lcom/tencent/mm/compatible/c/b;

.field public height:I

.field public te:I

.field public width:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/compatible/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/mm/compatible/c/c;->cdM:Lcom/tencent/mm/compatible/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/tencent/mm/compatible/c/c;->cdI:I

    .line 47
    iput v0, p0, Lcom/tencent/mm/compatible/c/c;->te:I

    .line 48
    iput v0, p0, Lcom/tencent/mm/compatible/c/c;->cdJ:I

    .line 49
    iput v0, p0, Lcom/tencent/mm/compatible/c/c;->cdK:I

    .line 50
    iput v0, p0, Lcom/tencent/mm/compatible/c/c;->cdL:I

    .line 51
    iput v0, p0, Lcom/tencent/mm/compatible/c/c;->width:I

    .line 52
    iput v0, p0, Lcom/tencent/mm/compatible/c/c;->height:I

    .line 53
    return-void
.end method
