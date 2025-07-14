import 'package:flutter_svgl/src/svgl.dart';
import 'package:flutter_test/flutter_test.dart';

import 'goldens/golden_test_helper.dart';

void main() {
  testWidgets('AiLogos.geminiWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.geminiWordmark(width: 48, height: 60),
      goldenName: 'ai_gemini_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.xAi matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.xAi(width: 48, height: 60),
      goldenName: 'ai_x_ai.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.gemini matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.gemini(width: 48, height: 60),
      goldenName: 'ai_gemini.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.claude matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.claude(width: 48, height: 60),
      goldenName: 'ai_claude.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.grokWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.grokWordmark(width: 48, height: 60),
      goldenName: 'ai_grok_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.inflection matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.inflection(width: 48, height: 60),
      goldenName: 'ai_inflection.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.firebaseStudio matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.firebaseStudio(width: 48, height: 60),
      goldenName: 'ai_firebase_studio.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.googlePalm matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.googlePalm(width: 48, height: 60),
      goldenName: 'ai_google_palm.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.sourcegraph matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.sourcegraph(width: 48, height: 60),
      goldenName: 'ai_sourcegraph.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.poper matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.poper(width: 48, height: 60),
      goldenName: 'ai_poper.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.openAiWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.openAiWordmark(width: 48, height: 60),
      goldenName: 'ai_open_ai_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.hume matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.hume(width: 48, height: 60),
      goldenName: 'ai_hume.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.openAi matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.openAi(width: 48, height: 60),
      goldenName: 'ai_open_ai.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.groq matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.groq(width: 48, height: 60),
      goldenName: 'ai_groq.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.sunoWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.sunoWordmark(width: 48, height: 60),
      goldenName: 'ai_suno_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.anthropicWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.anthropicWordmark(width: 48, height: 60),
      goldenName: 'ai_anthropic_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.lovable matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.lovable(width: 48, height: 60),
      goldenName: 'ai_lovable.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.basewell matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.basewell(width: 48, height: 60),
      goldenName: 'ai_basewell.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.togetherAi matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.togetherAi(width: 48, height: 60),
      goldenName: 'ai_together_ai.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.midday matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.midday(width: 48, height: 60),
      goldenName: 'ai_midday.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.openRouter matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.openRouter(width: 48, height: 60),
      goldenName: 'ai_open_router.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.mistral matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.mistral(width: 48, height: 60),
      goldenName: 'ai_mistral.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.deepseek matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.deepseek(width: 48, height: 60),
      goldenName: 'ai_deepseek.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.codium matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.codium(width: 48, height: 60),
      goldenName: 'ai_codium.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.perplexityAi matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.perplexityAi(width: 48, height: 60),
      goldenName: 'ai_perplexity_ai.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.qwen matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.qwen(width: 48, height: 60),
      goldenName: 'ai_qwen.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.replicateWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.replicateWordmark(width: 48, height: 60),
      goldenName: 'ai_replicate_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.mcpWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.mcpWordmark(width: 48, height: 60),
      goldenName: 'ai_mcp_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.buildship matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.buildship(width: 48, height: 60),
      goldenName: 'ai_buildship.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.deepseekWorkdmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.deepseekWorkdmark(width: 48, height: 60),
      goldenName: 'ai_deepseek_workdmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.huggingFace matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.huggingFace(width: 48, height: 60),
      goldenName: 'ai_hugging_face.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.windsurf matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.windsurf(width: 48, height: 60),
      goldenName: 'ai_windsurf.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.grok matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.grok(width: 48, height: 60),
      goldenName: 'ai_grok.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.mocha matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.mocha(width: 48, height: 60),
      goldenName: 'ai_mocha.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.cody matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.cody(width: 48, height: 60),
      goldenName: 'ai_cody.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.anthropic matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.anthropic(width: 48, height: 60),
      goldenName: 'ai_anthropic.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.openWebui matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.openWebui(width: 48, height: 60),
      goldenName: 'ai_open_webui.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.suno matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.suno(width: 48, height: 60),
      goldenName: 'ai_suno.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.cohereWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.cohereWordmark(width: 48, height: 60),
      goldenName: 'ai_cohere_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.runway matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.runway(width: 48, height: 60),
      goldenName: 'ai_runway.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.ollama matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.ollama(width: 48, height: 60),
      goldenName: 'ai_ollama.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.replicate matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.replicate(width: 48, height: 60),
      goldenName: 'ai_replicate.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.claudeWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.claudeWordmark(width: 48, height: 60),
      goldenName: 'ai_claude_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.cohere matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.cohere(width: 48, height: 60),
      goldenName: 'ai_cohere.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.perplexityAiWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.perplexityAiWordmark(width: 48, height: 60),
      goldenName: 'ai_perplexity_ai_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.locofy matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.locofy(width: 48, height: 60),
      goldenName: 'ai_locofy.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.inflectionWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.inflectionWordmark(width: 48, height: 60),
      goldenName: 'ai_inflection_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.stabilityAi matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.stabilityAi(width: 48, height: 60),
      goldenName: 'ai_stability_ai.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.mcp matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.mcp(width: 48, height: 60),
      goldenName: 'ai_mcp.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
  testWidgets('AiLogos.groqWordmark matches golden', (WidgetTester tester) async {
    await testSvgLogo(
      svgWidget: SVGL.ai.groqWordmark(width: 48, height: 60),
      goldenName: 'ai_groq_wordmark.png',
      expectedWidth: 48,
      expectedHeight: 60,
      tester: tester,
    );
  });
}
